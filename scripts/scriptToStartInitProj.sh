#!/usr/bin/env bash
# Fill ONLY the Next.js route files that must have a valid export,
# so `npm run dev` runs. Leaves everything else (components, features,
# lib...) empty so you can build UI at your own pace.
# Only writes into files that are currently EMPTY — never clobbers work.
# Run from project root:  bash fill-routes.sh
set -euo pipefail

# write <path> <<'EOF' ... EOF  — but only if the file is empty
fill() {
  local path="$1"
  if [ -f "$path" ] && [ ! -s "$path" ]; then
    cat > "$path"
    echo "  filled $path"
  else
    cat > /dev/null   # consume heredoc even when skipping
    echo "  skipped $path (missing or non-empty)"
  fi
}

echo "Filling route files..."

# ── root layout (MUST have <html> and <body>) ─────────────
fill src/app/layout.tsx <<'EOF'
import type { Metadata } from "next";
import "@/styles/globals.css";

export const metadata: Metadata = {
  title: "Store",
  description: "",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
EOF

# ── homepage ──────────────────────────────────────────────
fill src/app/page.tsx <<'EOF'
export default function HomePage() {
  return <main>Home</main>;
}
EOF

# ── global special files ──────────────────────────────────
fill src/app/loading.tsx <<'EOF'
export default function Loading() {
  return <div>Loading…</div>;
}
EOF

fill src/app/not-found.tsx <<'EOF'
export default function NotFound() {
  return <div>Page not found</div>;
}
EOF

fill src/app/error.tsx <<'EOF'
"use client";

export default function Error({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <div>
      <p>Something went wrong.</p>
      <button onClick={() => reset()}>Try again</button>
    </div>
  );
}
EOF

fill src/app/global-error.tsx <<'EOF'
"use client";

export default function GlobalError({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <html lang="en">
      <body>
        <p>Something went wrong.</p>
        <button onClick={() => reset()}>Try again</button>
      </body>
    </html>
  );
}
EOF

# ── SEO files (default-export functions) ──────────────────
fill src/app/sitemap.ts <<'EOF'
import type { MetadataRoute } from "next";

export default function sitemap(): MetadataRoute.Sitemap {
  return [];
}
EOF

fill src/app/robots.ts <<'EOF'
import type { MetadataRoute } from "next";

export default function robots(): MetadataRoute.Robots {
  return { rules: { userAgent: "*", allow: "/" } };
}
EOF

# ── middleware (no-op so it doesn't error) ────────────────
fill src/middleware.ts <<'EOF'
import { NextResponse } from "next/server";

export function middleware() {
  return NextResponse.next();
}

export const config = { matcher: [] };
EOF

# ── api route handlers (need an exported HTTP method) ─────
for r in src/app/api/revalidate/route.ts src/app/api/webhooks/route.ts; do
  fill "$r" <<'EOF'
import { NextResponse } from "next/server";

export async function GET() {
  return NextResponse.json({ ok: true });
}
EOF
done

fill src/app/api/og/route.tsx <<'EOF'
import { NextResponse } from "next/server";

export async function GET() {
  return NextResponse.json({ ok: true });
}
EOF

# ── every layout.tsx in a route group: pass children through ──
find src/app -name "layout.tsx" ! -path "src/app/layout.tsx" -print0 |
while IFS= read -r -d '' f; do
  fill "$f" <<'EOF'
export default function Layout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}
EOF
done

# ── every remaining page.tsx: minimal placeholder ─────────
find src/app -name "page.tsx" ! -path "src/app/page.tsx" -print0 |
while IFS= read -r -d '' f; do
  fill "$f" <<'EOF'
export default function Page() {
  return <main>TODO</main>;
}
EOF
done

# ── every remaining loading.tsx in subroutes ──────────────
find src/app -name "loading.tsx" ! -path "src/app/loading.tsx" -print0 |
while IFS= read -r -d '' f; do
  fill "$f" <<'EOF'
export default function Loading() {
  return <div>Loading…</div>;
}
EOF
done

echo "Done. Route files are valid; everything else left empty."