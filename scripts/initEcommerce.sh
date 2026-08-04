#!/usr/bin/env bash
# Scaffold the enterprise e-commerce frontend structure.
# Run from your project root:  bash scaffold.sh
set -euo pipefail

echo "Creating directories..."

# ── public ────────────────────────────────────────────────
mkdir -p public/{images,icons,banners,logos,fonts}

# ── app: routes ───────────────────────────────────────────
mkdir -p src/app/{api/revalidate,api/webhooks,api/og}

mkdir -p "src/app/(shop)/products/[slug]/[id]"
mkdir -p "src/app/(shop)/category/[...slug]"
mkdir -p "src/app/(shop)/search"
mkdir -p "src/app/(shop)/deals"
mkdir -p "src/app/(shop)/brand/[slug]"

mkdir -p "src/app/(checkout)/cart"
mkdir -p "src/app/(checkout)/checkout/shipping"
mkdir -p "src/app/(checkout)/checkout/payment"
mkdir -p "src/app/(checkout)/checkout/confirmation"

mkdir -p "src/app/(account)/account/"{profile,addresses,payment-methods,wishlist,subscriptions,notifications}
mkdir -p "src/app/(account)/orders/[id]/"{track,return}
mkdir -p "src/app/(account)/returns"

mkdir -p "src/app/(auth)/"{login,register,forgot-password,reset-password}

mkdir -p "src/app/(content)/blog/[slug]"
mkdir -p "src/app/(content)/help"
mkdir -p "src/app/(content)/about"
mkdir -p "src/app/(content)/[...slug]"

# ── components: generic, reusable ─────────────────────────
mkdir -p src/components/ui/{Button,Input,Select,Checkbox,Modal,Drawer,Toast,Tooltip,Tabs,Accordion,Badge,Card,Spinner,Skeleton,RatingStars,Image,RichText}
mkdir -p src/components/layout/{Header,Footer,MegaMenu,MobileNav,AnnouncementBar,Breadcrumb}
mkdir -p src/components/common/{EmptyState,Pagination,ErrorMessage,SeoMeta,Carousel}

# ── features: business slices ─────────────────────────────
for f in products cart checkout auth search orders reviews wishlist account recommendations; do
  mkdir -p "src/features/$f/components"
done

# ── shared top-level ──────────────────────────────────────
mkdir -p src/hooks
mkdir -p src/lib
mkdir -p src/store
mkdir -p src/providers
mkdir -p src/types
mkdir -p src/constants
mkdir -p src/styles
mkdir -p src/config
mkdir -p tests/e2e


echo "Creating files..."

# ── app files ─────────────────────────────────────────────
touch src/app/{layout.tsx,page.tsx,loading.tsx,error.tsx,not-found.tsx,global-error.tsx,sitemap.ts,robots.ts}
touch src/app/api/revalidate/route.ts
touch src/app/api/webhooks/route.ts
touch src/app/api/og/route.tsx

touch "src/app/(shop)/layout.tsx"
touch "src/app/(shop)/products/page.tsx" "src/app/(shop)/products/loading.tsx"
touch "src/app/(shop)/products/[slug]/[id]/page.tsx"
touch "src/app/(shop)/category/[...slug]/page.tsx"
touch "src/app/(shop)/search/page.tsx"
touch "src/app/(shop)/deals/page.tsx"
touch "src/app/(shop)/brand/[slug]/page.tsx"

touch "src/app/(checkout)/layout.tsx"
touch "src/app/(checkout)/cart/page.tsx"
touch "src/app/(checkout)/checkout/page.tsx"
touch "src/app/(checkout)/checkout/shipping/page.tsx"
touch "src/app/(checkout)/checkout/payment/page.tsx"
touch "src/app/(checkout)/checkout/confirmation/page.tsx"

touch "src/app/(account)/layout.tsx"
touch "src/app/(account)/account/page.tsx"
for p in profile addresses payment-methods wishlist subscriptions notifications; do
  touch "src/app/(account)/account/$p/page.tsx"
done
touch "src/app/(account)/orders/page.tsx"
touch "src/app/(account)/orders/[id]/page.tsx"
touch "src/app/(account)/orders/[id]/track/page.tsx"
touch "src/app/(account)/orders/[id]/return/page.tsx"
touch "src/app/(account)/returns/page.tsx"

touch "src/app/(auth)/layout.tsx"
for p in login register forgot-password reset-password; do
  touch "src/app/(auth)/$p/page.tsx"
done

touch "src/app/(content)/blog/page.tsx"
touch "src/app/(content)/blog/[slug]/page.tsx"
touch "src/app/(content)/help/page.tsx"
touch "src/app/(content)/about/page.tsx"
touch "src/app/(content)/[...slug]/page.tsx"

# ── ui primitives: component + test + story + barrel ──────
for c in Button Input Select Checkbox Modal Drawer Toast Tooltip Tabs Accordion Badge Card Spinner Skeleton RatingStars Image RichText; do
  touch "src/components/ui/$c/$c.tsx" \
        "src/components/ui/$c/$c.test.tsx" \
        "src/components/ui/$c/$c.stories.tsx" \
        "src/components/ui/$c/index.ts"
done

for c in Header Footer MegaMenu MobileNav AnnouncementBar Breadcrumb; do
  touch "src/components/layout/$c/$c.tsx" "src/components/layout/$c/index.ts"
done

for c in EmptyState Pagination ErrorMessage SeoMeta Carousel; do
  touch "src/components/common/$c/$c.tsx" "src/components/common/$c/index.ts"
done

# ── features: api / hooks / types (+ store/utils where noted) ──
for f in products cart checkout auth search orders reviews wishlist account recommendations; do
  touch "src/features/$f/api.ts" "src/features/$f/hooks.ts" "src/features/$f/types.ts" "src/features/$f/index.ts"
done
# stores only where state is owned
touch src/features/cart/store.ts src/features/checkout/store.ts
# extras
touch src/features/products/utils.ts src/features/products/constants.ts

# ── shared top-level files ────────────────────────────────
touch src/hooks/{useDebounce.ts,useLocalStorage.ts,useMediaQuery.ts,useIntersectionObserver.ts,useInfiniteScroll.ts}
touch src/lib/{api-client.ts,query-client.ts,cookies.ts,validators.ts,formatters.ts,analytics.ts,cn.ts}
touch src/store/{uiStore.ts,sessionStore.ts}
touch src/providers/{AppProviders.tsx,AuthProvider.tsx,ThemeProvider.tsx,QueryProvider.tsx}
touch src/types/{api.ts,common.ts}
touch src/constants/{routes.ts,api-endpoints.ts,config.ts}
touch src/styles/{globals.css,tokens.css}
touch src/config/{env.ts,site.ts}
touch src/middleware.ts
touch tests/setup.ts

# ── root files (only if missing — don't clobber existing) ─
for f in .env.local .env.example next.config.js tailwind.config.ts tsconfig.json package.json eslint.config.js README.md; do
  [ -e "$f" ] || touch "$f"
done

echo "Done. Structure created."