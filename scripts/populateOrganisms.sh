#!/bin/bash

# ============================================================
# ORGANISMS
# Run this script from:
#
# src/components/ui/organisms/
#
# Creates:
#   [Name]/[Name].tsx
#   [Name]/[Name].module.css
#   [Name]/[Name].stories.tsx
#
# Storybook:
#   @storybook/react-vite
#
# Atomic imports:
#   @/components/ui/atoms/...
#   @/components/ui/molecules/...
# ============================================================

set -e

create_organism() {
  NAME="$1"
  TITLE="$2"
  DESCRIPTION="$3"

  mkdir -p "$NAME"

  cat > "$NAME/$NAME.tsx" <<EOF
import type { ReactNode } from "react";
import styles from "./$NAME.module.css";

export interface ${NAME}Props {
  children?: ReactNode;
  title?: string;
  className?: string;
}

export default function $NAME({
  children,
  title,
  className = "",
}: ${NAME}Props) {
  return (
    <section className={\`\${styles.container} \${className}\`}>
      {title && <h2 className={styles.title}>{title}</h2>}
      {children}
    </section>
  );
}
EOF

  cat > "$NAME/$NAME.module.css" <<EOF
.container {
  width: 100%;
  box-sizing: border-box;
}

.title {
  margin: 0 0 16px;
  font-size: 24px;
  font-weight: 600;
}

EOF

  cat > "$NAME/$NAME.stories.tsx" <<EOF
import type { Meta, StoryObj } from "@storybook/react-vite";
import $NAME from "./$NAME";

const meta: Meta<typeof $NAME> = {
  title: "Organisms/$TITLE",
  component: $NAME,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof $NAME>;

export const Default: Story = {
  args: {
    title: "$DESCRIPTION",
    children: (
      <div style={{ padding: 24 }}>
        $DESCRIPTION
      </div>
    ),
  },
};
EOF
}


# ============================================================
# AccountSidebar
# ============================================================

mkdir -p AccountSidebar

cat > AccountSidebar/AccountSidebar.tsx <<'EOF'
import NavLink from "@/components/ui/molecules/NavLink/NavLink";
import styles from "./AccountSidebar.module.css";

export interface AccountSidebarItem {
  label: string;
  href: string;
  active?: boolean;
}

export interface AccountSidebarProps {
  items: AccountSidebarItem[];
}

export default function AccountSidebar({
  items,
}: AccountSidebarProps) {
  return (
    <aside className={styles.sidebar}>
      <nav>
        {items.map((item) => (
          <NavLink
            key={item.href}
            href={item.href}
            active={item.active}
          >
            {item.label}
          </NavLink>
        ))}
      </nav>
    </aside>
  );
}
EOF

cat > AccountSidebar/AccountSidebar.module.css <<'EOF'
.sidebar {
  width: 240px;
  padding: 16px;
  border-right: 1px solid #e5e7eb;
  box-sizing: border-box;
}

.sidebar nav {
  display: flex;
  flex-direction: column;
  gap: 4px;
}
EOF

cat > AccountSidebar/AccountSidebar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import AccountSidebar from "./AccountSidebar";

const meta: Meta<typeof AccountSidebar> = {
  title: "Organisms/AccountSidebar",
  component: AccountSidebar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AccountSidebar>;

export const Default: Story = {
  args: {
    items: [
      { label: "Account", href: "#", active: true },
      { label: "Orders", href: "#" },
      { label: "Wishlist", href: "#" },
      { label: "Addresses", href: "#" },
      { label: "Settings", href: "#" },
    ],
  },
};
EOF


# ============================================================
# AddressBook
# ============================================================

mkdir -p AddressBook

cat > AddressBook/AddressBook.tsx <<'EOF'
import AddressFormRow from "@/components/ui/molecules/AddressFormRow/AddressFormRow";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./AddressBook.module.css";

export interface AddressBookProps {
  onSave?: () => void;
}

export default function AddressBook({
  onSave,
}: AddressBookProps) {
  return (
    <section className={styles.container}>
      <h2 className={styles.title}>Address Book</h2>

      <div className={styles.form}>
        <AddressFormRow
          label="Street Address"
          placeholder="Enter street address"
          required
        />

        <AddressFormRow
          label="City"
          placeholder="Enter city"
          required
        />

        <AddressFormRow
          label="Postal Code"
          placeholder="Enter postal code"
          required
        />

        <Button onClick={onSave}>
          Save Address
        </Button>
      </div>
    </section>
  );
}
EOF

cat > AddressBook/AddressBook.module.css <<'EOF'
.container {
  width: 100%;
}

.title {
  margin: 0 0 20px;
  font-size: 24px;
}

.form {
  display: flex;
  flex-direction: column;
  gap: 16px;
  max-width: 600px;
}
EOF

cat > AddressBook/AddressBook.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import AddressBook from "./AddressBook";

const meta: Meta<typeof AddressBook> = {
  title: "Organisms/AddressBook",
  component: AddressBook,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AddressBook>;

export const Default: Story = {};
EOF


# ============================================================
# AnnouncementBar
# ============================================================

mkdir -p AnnouncementBar

cat > AnnouncementBar/AnnouncementBar.tsx <<'EOF'
import Alert from "@/components/ui/molecules/Alert/Alert";
import styles from "./AnnouncementBar.module.css";

export interface AnnouncementBarProps {
  message: string;
  onClose?: () => void;
}

export default function AnnouncementBar({
  message,
  onClose,
}: AnnouncementBarProps) {
  return (
    <div className={styles.bar}>
      <Alert
        message={message}
        variant="info"
        onClose={onClose}
      />
    </div>
  );
}
EOF

cat > AnnouncementBar/AnnouncementBar.module.css <<'EOF'
.bar {
  width: 100%;
}

.bar > div {
  border-radius: 0;
  border-left: 0;
  border-right: 0;
}
EOF

cat > AnnouncementBar/AnnouncementBar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import AnnouncementBar from "./AnnouncementBar";

const meta: Meta<typeof AnnouncementBar> = {
  title: "Organisms/AnnouncementBar",
  component: AnnouncementBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AnnouncementBar>;

export const Default: Story = {
  args: {
    message: "Free shipping on orders over $50.",
  },
};
EOF


# ============================================================
# BreadcrumbBar
# ============================================================

mkdir -p BreadcrumbBar

cat > BreadcrumbBar/BreadcrumbBar.tsx <<'EOF'
import Breadcrumb from "@/components/ui/molecules/Breadcrumb/Breadcrumb";
import styles from "./BreadcrumbBar.module.css";

export interface BreadcrumbBarProps {
  items: {
    label: string;
    href?: string;
  }[];
}

export default function BreadcrumbBar({
  items,
}: BreadcrumbBarProps) {
  return (
    <div className={styles.bar}>
      <Breadcrumb items={items} />
    </div>
  );
}
EOF

cat > BreadcrumbBar/BreadcrumbBar.module.css <<'EOF'
.bar {
  width: 100%;
  padding: 12px 0;
}
EOF

cat > BreadcrumbBar/BreadcrumbBar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import BreadcrumbBar from "./BreadcrumbBar";

const meta: Meta<typeof BreadcrumbBar> = {
  title: "Organisms/BreadcrumbBar",
  component: BreadcrumbBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof BreadcrumbBar>;

export const Default: Story = {
  args: {
    items: [
      { label: "Home", href: "#" },
      { label: "Electronics", href: "#" },
      { label: "Laptops" },
    ],
  },
};
EOF


# ============================================================
# CartPage
# ============================================================

mkdir -p CartPage

cat > CartPage/CartPage.tsx <<'EOF'
import CartLineItemSummary from "@/components/ui/molecules/CartLineItemSummary/CartLineItemSummary";
import OrderSummaryRow from "@/components/ui/molecules/OrderSummaryRow/OrderSummaryRow";
import PromoCodeInput from "@/components/ui/molecules/PromoCodeInput/PromoCodeInput";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./CartPage.module.css";

export interface CartPageProps {
  onCheckout?: () => void;
}

export default function CartPage({
  onCheckout,
}: CartPageProps) {
  return (
    <main className={styles.page}>
      <section className={styles.items}>
        <h1>Shopping Cart</h1>

        <CartLineItemSummary
          name="Wireless Headphones"
          image="https://placehold.co/64x64"
          quantity={1}
          price={49.99}
        />

        <CartLineItemSummary
          name="USB-C Cable"
          image="https://placehold.co/64x64"
          quantity={2}
          price={14.99}
        />
      </section>

      <aside className={styles.summary}>
        <h2>Order Summary</h2>

        <OrderSummaryRow
          label="Subtotal"
          amount={79.97}
        />

        <OrderSummaryRow
          label="Shipping"
          amount={0}
        />

        <OrderSummaryRow
          label="Total"
          amount={79.97}
          emphasized
        />

        <PromoCodeInput />

        <Button onClick={onCheckout}>
          Checkout
        </Button>
      </aside>
    </main>
  );
}
EOF

cat > CartPage/CartPage.module.css <<'EOF'
.page {
  display: grid;
  grid-template-columns: 1fr 360px;
  gap: 40px;
  width: 100%;
}

.items {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.summary {
  display: flex;
  flex-direction: column;
  gap: 12px;
  padding: 24px;
  border: 1px solid #e5e7eb;
  border-radius: 8px;
  height: fit-content;
}

@media (max-width: 768px) {
  .page {
    grid-template-columns: 1fr;
  }
}
EOF

cat > CartPage/CartPage.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import CartPage from "./CartPage";

const meta: Meta<typeof CartPage> = {
  title: "Organisms/CartPage",
  component: CartPage,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CartPage>;

export const Default: Story = {};
EOF


# ============================================================
# CategoryBanner
# ============================================================

mkdir -p CategoryBanner

cat > CategoryBanner/CategoryBanner.tsx <<'EOF'
import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./CategoryBanner.module.css";

export interface CategoryBannerProps {
  title: string;
  description?: string;
  image?: string;
}

export default function CategoryBanner({
  title,
  description,
  image,
}: CategoryBannerProps) {
  return (
    <section
      className={styles.banner}
      style={image ? { backgroundImage: `url(${image})` } : undefined}
    >
      <div className={styles.content}>
        <Heading level={1}>{title}</Heading>

        {description && <Text>{description}</Text>}
      </div>
    </section>
  );
}
EOF

cat > CategoryBanner/CategoryBanner.module.css <<'EOF'
.banner {
  min-height: 240px;
  display: flex;
  align-items: center;
  padding: 40px;
  background-size: cover;
  background-position: center;
  background-color: #f3f4f6;
}

.content {
  max-width: 600px;
}
EOF

cat > CategoryBanner/CategoryBanner.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import CategoryBanner from "./CategoryBanner";

const meta: Meta<typeof CategoryBanner> = {
  title: "Organisms/CategoryBanner",
  component: CategoryBanner,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CategoryBanner>;

export const Default: Story = {
  args: {
    title: "Electronics",
    description: "Discover our latest electronics and accessories.",
  },
};
EOF


# ============================================================
# CategoryTileGrid
# ============================================================

mkdir -p CategoryTileGrid

cat > CategoryTileGrid/CategoryTileGrid.tsx <<'EOF'
import Card from "@/components/ui/molecules/Card/Card";
import Image from "@/components/ui/atoms/Image/Image";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./CategoryTileGrid.module.css";

export interface CategoryTile {
  id: string;
  name: string;
  image: string;
}

export interface CategoryTileGridProps {
  categories: CategoryTile[];
}

export default function CategoryTileGrid({
  categories,
}: CategoryTileGridProps) {
  return (
    <section className={styles.grid}>
      {categories.map((category) => (
        <Card key={category.id}>
          <Image
            src={category.image}
            alt={category.name}
            width={200}
            height={150}
          />
          <Text>{category.name}</Text>
        </Card>
      ))}
    </section>
  );
}
EOF

cat > CategoryTileGrid/CategoryTileGrid.module.css <<'EOF'
.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 16px;
}

@media (max-width: 768px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
EOF

cat > CategoryTileGrid/CategoryTileGrid.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import CategoryTileGrid from "./CategoryTileGrid";

const meta: Meta<typeof CategoryTileGrid> = {
  title: "Organisms/CategoryTileGrid",
  component: CategoryTileGrid,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CategoryTileGrid>;

export const Default: Story = {
  args: {
    categories: [
      {
        id: "1",
        name: "Laptops",
        image: "https://placehold.co/200x150",
      },
      {
        id: "2",
        name: "Phones",
        image: "https://placehold.co/200x150",
      },
      {
        id: "3",
        name: "Audio",
        image: "https://placehold.co/200x150",
      },
      {
        id: "4",
        name: "Accessories",
        image: "https://placehold.co/200x150",
      },
    ],
  },
};
EOF


# ============================================================
# CheckoutStepper
# ============================================================

mkdir -p CheckoutStepper

cat > CheckoutStepper/CheckoutStepper.tsx <<'EOF'
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./CheckoutStepper.module.css";

export interface CheckoutStep {
  label: string;
  completed?: boolean;
  active?: boolean;
}

export interface CheckoutStepperProps {
  steps: CheckoutStep[];
}

export default function CheckoutStepper({
  steps,
}: CheckoutStepperProps) {
  return (
    <div className={styles.stepper}>
      {steps.map((step, index) => (
        <div
          key={step.label}
          className={`${styles.step} ${
            step.active ? styles.active : ""
          } ${step.completed ? styles.completed : ""}`}
        >
          <div className={styles.number}>
            {step.completed ? "✓" : index + 1}
          </div>

          <Text>{step.label}</Text>

          {index < steps.length - 1 && (
            <div className={styles.line} />
          )}
        </div>
      ))}
    </div>
  );
}
EOF

cat > CheckoutStepper/CheckoutStepper.module.css <<'EOF'
.stepper {
  display: flex;
  align-items: center;
  width: 100%;
}

.step {
  display: flex;
  align-items: center;
  gap: 8px;
}

.number {
  width: 28px;
  height: 28px;
  display: grid;
  place-items: center;
  border: 1px solid #d1d5db;
  border-radius: 50%;
  font-size: 12px;
}

.active .number,
.completed .number {
  background: #111827;
  color: white;
  border-color: #111827;
}

.line {
  width: 50px;
  height: 1px;
  margin: 0 12px;
  background: #d1d5db;
}
EOF

cat > CheckoutStepper/CheckoutStepper.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import CheckoutStepper from "./CheckoutStepper";

const meta: Meta<typeof CheckoutStepper> = {
  title: "Organisms/CheckoutStepper",
  component: CheckoutStepper,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CheckoutStepper>;

export const Default: Story = {
  args: {
    steps: [
      { label: "Cart", completed: true },
      { label: "Shipping", active: true },
      { label: "Payment" },
      { label: "Confirmation" },
    ],
  },
};
EOF


# ============================================================
# ConfirmationDialog
# ============================================================

mkdir -p ConfirmationDialog

cat > ConfirmationDialog/ConfirmationDialog.tsx <<'EOF'
import Modal from "@/components/ui/molecules/Modal/Modal";
import Button from "@/components/ui/atoms/Button/Button";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./ConfirmationDialog.module.css";

export interface ConfirmationDialogProps {
  open: boolean;
  title: string;
  message: string;
  onConfirm?: () => void;
  onCancel?: () => void;
}

export default function ConfirmationDialog({
  open,
  title,
  message,
  onConfirm,
  onCancel,
}: ConfirmationDialogProps) {
  return (
    <Modal
      open={open}
      title={title}
      onClose={onCancel ?? (() => {})}
    >
      <div className={styles.content}>
        <Text>{message}</Text>

        <div className={styles.actions}>
          <Button onClick={onCancel}>
            Cancel
          </Button>

          <Button onClick={onConfirm}>
            Confirm
          </Button>
        </div>
      </div>
    </Modal>
  );
}
EOF

cat > ConfirmationDialog/ConfirmationDialog.module.css <<'EOF'
.content {
  display: flex;
  flex-direction: column;
  gap: 24px;
}

.actions {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
}
EOF

cat > ConfirmationDialog/ConfirmationDialog.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ConfirmationDialog from "./ConfirmationDialog";

const meta: Meta<typeof ConfirmationDialog> = {
  title: "Organisms/ConfirmationDialog",
  component: ConfirmationDialog,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ConfirmationDialog>;

export const Default: Story = {
  args: {
    open: true,
    title: "Delete Item",
    message: "Are you sure you want to delete this item?",
  },
};
EOF


# ============================================================
# DealOfTheDaySection
# ============================================================

mkdir -p DealOfTheDaySection

cat > DealOfTheDaySection/DealOfTheDaySection.tsx <<'EOF'
import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./DealOfTheDaySection.module.css";

export default function DealOfTheDaySection() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Deal of the Day</Heading>

      <div className={styles.grid}>
        <ProductCard
          name="Wireless Headphones"
          image="https://placehold.co/300x300"
          price={79.99}
          originalPrice={99.99}
        />

        <ProductCard
          name="Smart Watch"
          image="https://placehold.co/300x300"
          price={129.99}
          originalPrice={159.99}
        />

        <ProductCard
          name="Bluetooth Speaker"
          image="https://placehold.co/300x300"
          price={49.99}
          originalPrice={69.99}
        />
      </div>
    </section>
  );
}
EOF

cat > DealOfTheDaySection/DealOfTheDaySection.module.css <<'EOF'
.section {
  width: 100%;
}

.grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  margin-top: 20px;
}
EOF

cat > DealOfTheDaySection/DealOfTheDaySection.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import DealOfTheDaySection from "./DealOfTheDaySection";

const meta: Meta<typeof DealOfTheDaySection> = {
  title: "Organisms/DealOfTheDaySection",
  component: DealOfTheDaySection,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof DealOfTheDaySection>;

export const Default: Story = {};
EOF


# ============================================================
# Drawer
# ============================================================

mkdir -p Drawer

cat > Drawer/Drawer.tsx <<'EOF'
import MoleculeDrawer from "@/components/ui/molecules/Drawer/Drawer";

export interface DrawerProps {
  open: boolean;
  title?: string;
  children: React.ReactNode;
  onClose: () => void;
}

export default function Drawer(props: DrawerProps) {
  return <MoleculeDrawer {...props} />;
}
EOF

cat > Drawer/Drawer.module.css <<'EOF'
.container {
  width: 100%;
}
EOF

cat > Drawer/Drawer.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Drawer from "./Drawer";

const meta: Meta<typeof Drawer> = {
  title: "Organisms/Drawer",
  component: Drawer,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Drawer>;

export const Open: Story = {
  args: {
    open: true,
    title: "Navigation",
    children: "Drawer content",
  },
};
EOF


# ============================================================
# FilterSidebar
# ============================================================

mkdir -p FilterSidebar

cat > FilterSidebar/FilterSidebar.tsx <<'EOF'
import Select from "@/components/ui/atoms/Select/Select";
import Checkbox from "@/components/ui/atoms/Checkbox/Checkbox";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./FilterSidebar.module.css";

export default function FilterSidebar() {
  return (
    <aside className={styles.sidebar}>
      <Heading level={2}>Filters</Heading>

      <div className={styles.group}>
        <strong>Category</strong>

        <Checkbox label="Electronics" />
        <Checkbox label="Home" />
        <Checkbox label="Fashion" />
      </div>

      <div className={styles.group}>
        <strong>Sort</strong>

        <Select
          options={[
            { label: "Recommended", value: "recommended" },
            { label: "Price: Low to High", value: "low" },
            { label: "Price: High to Low", value: "high" },
          ]}
        />
      </div>
    </aside>
  );
}
EOF

cat > FilterSidebar/FilterSidebar.module.css <<'EOF'
.sidebar {
  width: 260px;
  display: flex;
  flex-direction: column;
  gap: 24px;
  padding: 20px;
  border: 1px solid #e5e7eb;
}

.group {
  display: flex;
  flex-direction: column;
  gap: 10px;
}
EOF

cat > FilterSidebar/FilterSidebar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import FilterSidebar from "./FilterSidebar";

const meta: Meta<typeof FilterSidebar> = {
  title: "Organisms/FilterSidebar",
  component: FilterSidebar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof FilterSidebar>;

export const Default: Story = {};
EOF


# ============================================================
# Footer
# ============================================================

mkdir -p Footer

cat > Footer/Footer.tsx <<'EOF'
import Link from "@/components/ui/atoms/Link/Link";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./Footer.module.css";

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div>
        <strong>Shop</strong>
        <Link href="#">Products</Link>
        <Link href="#">Categories</Link>
        <Link href="#">Deals</Link>
      </div>

      <div>
        <strong>Support</strong>
        <Link href="#">Contact</Link>
        <Link href="#">Shipping</Link>
        <Link href="#">Returns</Link>
      </div>

      <div>
        <Text>© 2026 Store. All rights reserved.</Text>
      </div>
    </footer>
  );
}
EOF

cat > Footer/Footer.module.css <<'EOF'
.footer {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 40px;
  padding: 40px;
  border-top: 1px solid #e5e7eb;
}

.footer > div {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

@media (max-width: 768px) {
  .footer {
    grid-template-columns: 1fr;
  }
}
EOF

cat > Footer/Footer.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Footer from "./Footer";

const meta: Meta<typeof Footer> = {
  title: "Organisms/Footer",
  component: Footer,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Footer>;

export const Default: Story = {};
EOF


# ============================================================
# Header
# ============================================================

mkdir -p Header

cat > Header/Header.tsx <<'EOF'
import Logo from "@/components/ui/atoms/Logo/Logo";
import SearchBar from "@/components/ui/molecules/SearchBar/SearchBar";
import AccountMenuTrigger from "@/components/ui/molecules/AccountMenuTrigger/AccountMenuTrigger";
import styles from "./Header.module.css";

export default function Header() {
  return (
    <header className={styles.header}>
      <Logo />

      <div className={styles.search}>
        <SearchBar placeholder="Search products..." />
      </div>

      <AccountMenuTrigger name="Account" />
    </header>
  );
}
EOF

cat > Header/Header.module.css <<'EOF'
.header {
  display: flex;
  align-items: center;
  gap: 24px;
  padding: 16px 24px;
  border-bottom: 1px solid #e5e7eb;
}

.search {
  flex: 1;
  max-width: 700px;
  margin: 0 auto;
}
EOF

cat > Header/Header.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Header from "./Header";

const meta: Meta<typeof Header> = {
  title: "Organisms/Header",
  component: Header,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Header>;

export const Default: Story = {};
EOF


# ============================================================
# HeroBanner
# ============================================================

mkdir -p HeroBanner

cat > HeroBanner/HeroBanner.tsx <<'EOF'
import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./HeroBanner.module.css";

export interface HeroBannerProps {
  title: string;
  description?: string;
  buttonLabel?: string;
  image?: string;
}

export default function HeroBanner({
  title,
  description,
  buttonLabel = "Shop Now",
  image,
}: HeroBannerProps) {
  return (
    <section
      className={styles.hero}
      style={image ? { backgroundImage: `url(${image})` } : undefined}
    >
      <div className={styles.content}>
        <Heading level={1}>{title}</Heading>

        {description && <Text>{description}</Text>}

        <Button>{buttonLabel}</Button>
      </div>
    </section>
  );
}
EOF

cat > HeroBanner/HeroBanner.module.css <<'EOF'
.hero {
  min-height: 420px;
  display: flex;
  align-items: center;
  padding: 48px;
  background-color: #f3f4f6;
  background-size: cover;
  background-position: center;
}

.content {
  max-width: 550px;
  display: flex;
  flex-direction: column;
  gap: 16px;
}
EOF

cat > HeroBanner/HeroBanner.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import HeroBanner from "./HeroBanner";

const meta: Meta<typeof HeroBanner> = {
  title: "Organisms/HeroBanner",
  component: HeroBanner,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof HeroBanner>;

export const Default: Story = {
  args: {
    title: "Everything you need, all in one place.",
    description: "Discover our latest products and deals.",
  },
};
EOF


# ============================================================
# MegaMenu
# ============================================================

mkdir -p MegaMenu

cat > MegaMenu/MegaMenu.tsx <<'EOF'
import NavLink from "@/components/ui/molecules/NavLink/NavLink";
import styles from "./MegaMenu.module.css";

export interface MegaMenuColumn {
  title: string;
  items: {
    label: string;
    href: string;
  }[];
}

export interface MegaMenuProps {
  columns: MegaMenuColumn[];
}

export default function MegaMenu({
  columns,
}: MegaMenuProps) {
  return (
    <nav className={styles.menu}>
      {columns.map((column) => (
        <div key={column.title} className={styles.column}>
          <strong>{column.title}</strong>

          {column.items.map((item) => (
            <NavLink key={item.href} href={item.href}>
              {item.label}
            </NavLink>
          ))}
        </div>
      ))}
    </nav>
  );
}
EOF

cat > MegaMenu/MegaMenu.module.css <<'EOF'
.menu {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 32px;
  padding: 24px;
  border: 1px solid #e5e7eb;
}

.column {
  display: flex;
  flex-direction: column;
  gap: 4px;
}
EOF

cat > MegaMenu/MegaMenu.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import MegaMenu from "./MegaMenu";

const meta: Meta<typeof MegaMenu> = {
  title: "Organisms/MegaMenu",
  component: MegaMenu,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof MegaMenu>;

export const Default: Story = {
  args: {
    columns: [
      {
        title: "Electronics",
        items: [
          { label: "Laptops", href: "#" },
          { label: "Phones", href: "#" },
          { label: "Audio", href: "#" },
        ],
      },
      {
        title: "Home",
        items: [
          { label: "Furniture", href: "#" },
          { label: "Kitchen", href: "#" },
        ],
      },
      {
        title: "Fashion",
        items: [
          { label: "Men", href: "#" },
          { label: "Women", href: "#" },
        ],
      },
      {
        title: "Deals",
        items: [
          { label: "Today's Deals", href: "#" },
          { label: "Clearance", href: "#" },
        ],
      },
    ],
  },
};
EOF


# ============================================================
# MiniCartDropdown
# ============================================================

mkdir -p MiniCartDropdown

cat > MiniCartDropdown/MiniCartDropdown.tsx <<'EOF'
import CartLineItemSummary from "@/components/ui/molecules/CartLineItemSummary/CartLineItemSummary";
import OrderSummaryRow from "@/components/ui/molecules/OrderSummaryRow/OrderSummaryRow";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./MiniCartDropdown.module.css";

export default function MiniCartDropdown() {
  return (
    <div className={styles.dropdown}>
      <h3>Your Cart</h3>

      <CartLineItemSummary
        name="Wireless Headphones"
        image="https://placehold.co/64x64"
        quantity={1}
        price={49.99}
      />

      <CartLineItemSummary
        name="USB Cable"
        image="https://placehold.co/64x64"
        quantity={2}
        price={9.99}
      />

      <OrderSummaryRow
        label="Total"
        amount={69.97}
        emphasized
      />

      <Button>View Cart</Button>
    </div>
  );
}
EOF

cat > MiniCartDropdown/MiniCartDropdown.module.css <<'EOF'
.dropdown {
  width: 360px;
  padding: 20px;
  background: white;
  border: 1px solid #e5e7eb;
  border-radius: 8px;
  box-shadow: 0 8px 24px rgb(0 0 0 / 10%);
  display: flex;
  flex-direction: column;
  gap: 16px;
}
EOF

cat > MiniCartDropdown/MiniCartDropdown.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import MiniCartDropdown from "./MiniCartDropdown";

const meta: Meta<typeof MiniCartDropdown> = {
  title: "Organisms/MiniCartDropdown",
  component: MiniCartDropdown,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof MiniCartDropdown>;

export const Default: Story = {};
EOF


# ============================================================
# MobileBottomNav
# ============================================================

mkdir -p MobileBottomNav

cat > MobileBottomNav/MobileBottomNav.tsx <<'EOF'
import NavLink from "@/components/ui/molecules/NavLink/NavLink";
import styles from "./MobileBottomNav.module.css";

export interface MobileBottomNavItem {
  label: string;
  href: string;
  active?: boolean;
}

export interface MobileBottomNavProps {
  items: MobileBottomNavItem[];
}

export default function MobileBottomNav({
  items,
}: MobileBottomNavProps) {
  return (
    <nav className={styles.nav}>
      {items.map((item) => (
        <NavLink
          key={item.href}
          href={item.href}
          active={item.active}
        >
          {item.label}
        </NavLink>
      ))}
    </nav>
  );
}
EOF

cat > MobileBottomNav/MobileBottomNav.module.css <<'EOF'
.nav {
  display: flex;
  justify-content: space-around;
  padding: 8px;
  border-top: 1px solid #e5e7eb;
  background: white;
}
EOF

cat > MobileBottomNav/MobileBottomNav.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import MobileBottomNav from "./MobileBottomNav";

const meta: Meta<typeof MobileBottomNav> = {
  title: "Organisms/MobileBottomNav",
  component: MobileBottomNav,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof MobileBottomNav>;

export const Default: Story = {
  args: {
    items: [
      { label: "Home", href: "#", active: true },
      { label: "Search", href: "#" },
      { label: "Cart", href: "#" },
      { label: "Account", href: "#" },
    ],
  },
};
EOF


# ============================================================
# Modal
# ============================================================

mkdir -p Modal

cat > Modal/Modal.tsx <<'EOF'
import MoleculeModal from "@/components/ui/molecules/Modal/Modal";

export interface ModalProps {
  open: boolean;
  title?: string;
  children: React.ReactNode;
  onClose: () => void;
}

export default function Modal(props: ModalProps) {
  return <MoleculeModal {...props} />;
}
EOF

cat > Modal/Modal.module.css <<'EOF'
.container {
  width: 100%;
}
EOF

cat > Modal/Modal.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Modal from "./Modal";

const meta: Meta<typeof Modal> = {
  title: "Organisms/Modal",
  component: Modal,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Modal>;

export const Open: Story = {
  args: {
    open: true,
    title: "Example Modal",
    onClose: () => {},
    children: "Modal content.",
  },
};
EOF


# ============================================================
# NewsletterSignup
# ============================================================

mkdir -p NewsletterSignup

cat > NewsletterSignup/NewsletterSignup.tsx <<'EOF'
import Input from "@/components/ui/atoms/Input/Input";
import Button from "@/components/ui/atoms/Button/Button";
import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./NewsletterSignup.module.css";

export default function NewsletterSignup() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Stay in the loop</Heading>

      <Text>
        Subscribe to our newsletter for updates and deals.
      </Text>

      <div className={styles.form}>
        <Input placeholder="Your email address" />
        <Button>Subscribe</Button>
      </div>
    </section>
  );
}
EOF

cat > NewsletterSignup/NewsletterSignup.module.css <<'EOF'
.section {
  padding: 40px;
  text-align: center;
  background: #f3f4f6;
}

.form {
  max-width: 500px;
  margin: 20px auto 0;
  display: flex;
  gap: 8px;
}
EOF

cat > NewsletterSignup/NewsletterSignup.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import NewsletterSignup from "./NewsletterSignup";

const meta: Meta<typeof NewsletterSignup> = {
  title: "Organisms/NewsletterSignup",
  component: NewsletterSignup,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof NewsletterSignup>;

export const Default: Story = {};
EOF


# ============================================================
# OrderHistoryList
# ============================================================

mkdir -p OrderHistoryList

cat > OrderHistoryList/OrderHistoryList.tsx <<'EOF'
import OrderSummaryRow from "@/components/ui/molecules/OrderSummaryRow/OrderSummaryRow";
import styles from "./OrderHistoryList.module.css";

export interface OrderHistoryItem {
  id: string;
  date: string;
  total: number;
  status: string;
}

export interface OrderHistoryListProps {
  orders: OrderHistoryItem[];
}

export default function OrderHistoryList({
  orders,
}: OrderHistoryListProps) {
  return (
    <section className={styles.list}>
      <h2>Order History</h2>

      {orders.map((order) => (
        <article key={order.id} className={styles.order}>
          <div>
            <strong>Order #{order.id}</strong>
            <p>{order.date}</p>
          </div>

          <OrderSummaryRow
            label={order.status}
            amount={order.total}
          />
        </article>
      ))}
    </section>
  );
}
EOF

cat > OrderHistoryList/OrderHistoryList.module.css <<'EOF'
.list {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.order {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px;
  border: 1px solid #e5e7eb;
  border-radius: 8px;
}
EOF

cat > OrderHistoryList/OrderHistoryList.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import OrderHistoryList from "./OrderHistoryList";

const meta: Meta<typeof OrderHistoryList> = {
  title: "Organisms/OrderHistoryList",
  component: OrderHistoryList,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof OrderHistoryList>;

export const Default: Story = {
  args: {
    orders: [
      {
        id: "10001",
        date: "August 1, 2026",
        total: 129.99,
        status: "Delivered",
      },
      {
        id: "10002",
        date: "July 25, 2026",
        total: 79.99,
        status: "Shipped",
      },
    ],
  },
};
EOF


# ============================================================
# OrderReviewSummary
# ============================================================

mkdir -p OrderReviewSummary

cat > OrderReviewSummary/OrderReviewSummary.tsx <<'EOF'
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./OrderReviewSummary.module.css";

export interface OrderReviewSummaryProps {
  rating: number;
  reviewCount: number;
}

export default function OrderReviewSummary({
  rating,
  reviewCount,
}: OrderReviewSummaryProps) {
  return (
    <div className={styles.summary}>
      <StarRating rating={rating} />
      <Text>
        {rating.toFixed(1)} out of 5 ({reviewCount} reviews)
      </Text>
    </div>
  );
}
EOF

cat > OrderReviewSummary/OrderReviewSummary.module.css <<'EOF'
.summary {
  display: flex;
  align-items: center;
  gap: 10px;
}
EOF

cat > OrderReviewSummary/OrderReviewSummary.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import OrderReviewSummary from "./OrderReviewSummary";

const meta: Meta<typeof OrderReviewSummary> = {
  title: "Organisms/OrderReviewSummary",
  component: OrderReviewSummary,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof OrderReviewSummary>;

export const Default: Story = {
  args: {
    rating: 4.5,
    reviewCount: 128,
  },
};
EOF


# ============================================================
# OrderTrackingTimeline
# ============================================================

mkdir -p OrderTrackingTimeline

cat > OrderTrackingTimeline/OrderTrackingTimeline.tsx <<'EOF'
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./OrderTrackingTimeline.module.css";

export interface TrackingEvent {
  title: string;
  date: string;
  completed?: boolean;
}

export interface OrderTrackingTimelineProps {
  events: TrackingEvent[];
}

export default function OrderTrackingTimeline({
  events,
}: OrderTrackingTimelineProps) {
  return (
    <div className={styles.timeline}>
      {events.map((event) => (
        <div
          key={`${event.title}-${event.date}`}
          className={styles.event}
        >
          <div
            className={`${styles.dot} ${
              event.completed ? styles.completed : ""
            }`}
          />

          <div>
            <strong>{event.title}</strong>
            <Text size="sm">{event.date}</Text>
          </div>
        </div>
      ))}
    </div>
  );
}
EOF

cat > OrderTrackingTimeline/OrderTrackingTimeline.module.css <<'EOF'
.timeline {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.event {
  display: flex;
  align-items: flex-start;
  gap: 12px;
}

.dot {
  width: 12px;
  height: 12px;
  margin-top: 4px;
  border-radius: 50%;
  background: #d1d5db;
}

.completed {
  background: #111827;
}
EOF

cat > OrderTrackingTimeline/OrderTrackingTimeline.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import OrderTrackingTimeline from "./OrderTrackingTimeline";

const meta: Meta<typeof OrderTrackingTimeline> = {
  title: "Organisms/OrderTrackingTimeline",
  component: OrderTrackingTimeline,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof OrderTrackingTimeline>;

export const Default: Story = {
  args: {
    events: [
      {
        title: "Order placed",
        date: "August 1",
        completed: true,
      },
      {
        title: "Shipped",
        date: "August 2",
        completed: true,
      },
      {
        title: "Out for delivery",
        date: "August 3",
      },
      {
        title: "Delivered",
        date: "August 3",
      },
    ],
  },
};
EOF


# ============================================================
# Pagination
# ============================================================

mkdir -p Pagination

cat > Pagination/Pagination.tsx <<'EOF'
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./Pagination.module.css";

export interface PaginationProps {
  page: number;
  totalPages: number;
  onChange?: (page: number) => void;
}

export default function Pagination({
  page,
  totalPages,
  onChange,
}: PaginationProps) {
  return (
    <nav className={styles.pagination}>
      <Button
        disabled={page <= 1}
        onClick={() => onChange?.(page - 1)}
      >
        Previous
      </Button>

      <span>
        Page {page} of {totalPages}
      </span>

      <Button
        disabled={page >= totalPages}
        onClick={() => onChange?.(page + 1)}
      >
        Next
      </Button>
    </nav>
  );
}
EOF

cat > Pagination/Pagination.module.css <<'EOF'
.pagination {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 16px;
}
EOF

cat > Pagination/Pagination.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Pagination from "./Pagination";

const meta: Meta<typeof Pagination> = {
  title: "Organisms/Pagination",
  component: Pagination,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Pagination>;

export const Default: Story = {
  args: {
    page: 2,
    totalPages: 10,
  },
};
EOF


# ============================================================
# PaymentMethodSelector
# ============================================================

mkdir -p PaymentMethodSelector

cat > PaymentMethodSelector/PaymentMethodSelector.tsx <<'EOF'
import PaymentMethodOption from "@/components/ui/molecules/PaymentMethodOption/PaymentMethodOption";
import styles from "./PaymentMethodSelector.module.css";

export default function PaymentMethodSelector() {
  return (
    <section className={styles.selector}>
      <h2>Payment Method</h2>

      <PaymentMethodOption
        id="card"
        name="Credit Card"
        description="Visa ending in 4242"
        selected
      />

      <PaymentMethodOption
        id="paypal"
        name="PayPal"
        description="Pay securely with PayPal"
      />
    </section>
  );
}
EOF

cat > PaymentMethodSelector/PaymentMethodSelector.module.css <<'EOF'
.selector {
  display: flex;
  flex-direction: column;
  gap: 12px;
}
EOF

cat > PaymentMethodSelector/PaymentMethodSelector.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import PaymentMethodSelector from "./PaymentMethodSelector";

const meta: Meta<typeof PaymentMethodSelector> = {
  title: "Organisms/PaymentMethodSelector",
  component: PaymentMethodSelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof PaymentMethodSelector>;

export const Default: Story = {};
EOF


# ============================================================
# ProductCard
# ============================================================

mkdir -p ProductCard

cat > ProductCard/ProductCard.tsx <<'EOF'
import ProductThumbnail from "@/components/ui/molecules/ProductThumbnail/ProductThumbnail";
import PriceBlock from "@/components/ui/molecules/PriceBlock/PriceBlock";
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./ProductCard.module.css";

export interface ProductCardProps {
  name: string;
  image: string;
  price: number;
  originalPrice?: number;
  rating?: number;
}

export default function ProductCard({
  name,
  image,
  price,
  originalPrice,
  rating,
}: ProductCardProps) {
  return (
    <article className={styles.card}>
      <ProductThumbnail
        src={image}
        alt={name}
      />

      <div className={styles.content}>
        <Text>{name}</Text>

        {rating !== undefined && (
          <StarRating rating={rating} />
        )}

        <PriceBlock
          price={price}
          originalPrice={originalPrice}
        />
      </div>
    </article>
  );
}
EOF

cat > ProductCard/ProductCard.module.css <<'EOF'
.card {
  width: 100%;
  border: 1px solid #e5e7eb;
  border-radius: 8px;
  overflow: hidden;
  background: white;
}

.content {
  display: flex;
  flex-direction: column;
  gap: 8px;
  padding: 16px;
}
EOF

cat > ProductCard/ProductCard.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductCard from "./ProductCard";

const meta: Meta<typeof ProductCard> = {
  title: "Organisms/ProductCard",
  component: ProductCard,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductCard>;

export const Default: Story = {
  args: {
    name: "Wireless Headphones",
    image: "https://placehold.co/300x300",
    price: 79.99,
    originalPrice: 99.99,
    rating: 4.5,
  },
};
EOF


# ============================================================
# ProductCarousel
# ============================================================

mkdir -p ProductCarousel

cat > ProductCarousel/ProductCarousel.tsx <<'EOF'
import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./ProductCarousel.module.css";

export interface ProductCarouselProps {
  title?: string;
}

export default function ProductCarousel({
  title = "Featured Products",
}: ProductCarouselProps) {
  return (
    <section>
      <Heading level={2}>{title}</Heading>

      <div className={styles.carousel}>
        <ProductCard
          name="Wireless Headphones"
          image="https://placehold.co/300x300"
          price={79.99}
          rating={4.5}
        />

        <ProductCard
          name="Smart Watch"
          image="https://placehold.co/300x300"
          price={129.99}
          rating={4}
        />

        <ProductCard
          name="Bluetooth Speaker"
          image="https://placehold.co/300x300"
          price={49.99}
          rating={4.5}
        />
      </div>
    </section>
  );
}
EOF

cat > ProductCarousel/ProductCarousel.module.css <<'EOF'
.carousel {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  margin-top: 20px;
}
EOF

cat > ProductCarousel/ProductCarousel.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductCarousel from "./ProductCarousel";

const meta: Meta<typeof ProductCarousel> = {
  title: "Organisms/ProductCarousel",
  component: ProductCarousel,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductCarousel>;

export const Default: Story = {};
EOF


# ============================================================
# ProductDescriptionTabs
# ============================================================

mkdir -p ProductDescriptionTabs

cat > ProductDescriptionTabs/ProductDescriptionTabs.tsx <<'EOF'
import Tabs from "@/components/ui/molecules/Tabs/Tabs";

export default function ProductDescriptionTabs() {
  return (
    <Tabs
      tabs={[
        {
          id: "description",
          label: "Description",
          content: "Detailed product description goes here.",
        },
        {
          id: "specifications",
          label: "Specifications",
          content: "Product specifications go here.",
        },
        {
          id: "shipping",
          label: "Shipping",
          content: "Shipping information goes here.",
        },
      ]}
    />
  );
}
EOF

cat > ProductDescriptionTabs/ProductDescriptionTabs.module.css <<'EOF'
.container {
  width: 100%;
}
EOF

cat > ProductDescriptionTabs/ProductDescriptionTabs.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductDescriptionTabs from "./ProductDescriptionTabs";

const meta: Meta<typeof ProductDescriptionTabs> = {
  title: "Organisms/ProductDescriptionTabs",
  component: ProductDescriptionTabs,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductDescriptionTabs>;

export const Default: Story = {};
EOF


# ============================================================
# ProductGrid
# ============================================================

mkdir -p ProductGrid

cat > ProductGrid/ProductGrid.tsx <<'EOF'
import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import styles from "./ProductGrid.module.css";

export interface ProductGridProps {
  count?: number;
}

export default function ProductGrid({
  count = 6,
}: ProductGridProps) {
  return (
    <div className={styles.grid}>
      {Array.from({ length: count }).map((_, index) => (
        <ProductCard
          key={index}
          name={`Product ${index + 1}`}
          image="https://placehold.co/300x300"
          price={49.99 + index * 10}
          rating={4}
        />
      ))}
    </div>
  );
}
EOF

cat > ProductGrid/ProductGrid.module.css <<'EOF'
.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

@media (max-width: 1024px) {
  .grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 768px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
EOF

cat > ProductGrid/ProductGrid.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductGrid from "./ProductGrid";

const meta: Meta<typeof ProductGrid> = {
  title: "Organisms/ProductGrid",
  component: ProductGrid,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductGrid>;

export const Default: Story = {
  args: {
    count: 8,
  },
};
EOF


# ============================================================
# ProductImageGallery
# ============================================================

mkdir -p ProductImageGallery

cat > ProductImageGallery/ProductImageGallery.tsx <<'EOF'
import ImageGalleryThumbnail from "@/components/ui/molecules/ImageGalleryThumbnail/ImageGalleryThumbnail";
import Image from "@/components/ui/atoms/Image/Image";
import styles from "./ProductImageGallery.module.css";

export interface ProductImageGalleryProps {
  images: {
    src: string;
    alt: string;
  }[];
}

export default function ProductImageGallery({
  images,
}: ProductImageGalleryProps) {
  const main = images[0];

  return (
    <div className={styles.gallery}>
      <div className={styles.main}>
        {main && (
          <Image
            src={main.src}
            alt={main.alt}
            width={600}
            height={600}
          />
        )}
      </div>

      <div className={styles.thumbnails}>
        {images.map((image, index) => (
          <ImageGalleryThumbnail
            key={image.src}
            src={image.src}
            alt={image.alt}
            selected={index === 0}
          />
        ))}
      </div>
    </div>
  );
}
EOF

cat > ProductImageGallery/ProductImageGallery.module.css <<'EOF'
.gallery {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.main {
  width: 100%;
}

.thumbnails {
  display: flex;
  gap: 8px;
}
EOF

cat > ProductImageGallery/ProductImageGallery.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductImageGallery from "./ProductImageGallery";

const meta: Meta<typeof ProductImageGallery> = {
  title: "Organisms/ProductImageGallery",
  component: ProductImageGallery,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductImageGallery>;

export const Default: Story = {
  args: {
    images: [
      {
        src: "https://placehold.co/600x600",
        alt: "Product front",
      },
      {
        src: "https://placehold.co/600x600",
        alt: "Product side",
      },
      {
        src: "https://placehold.co/600x600",
        alt: "Product back",
      },
    ],
  },
};
EOF


# ============================================================
# ProductInfoPanel
# ============================================================

mkdir -p ProductInfoPanel

cat > ProductInfoPanel/ProductInfoPanel.tsx <<'EOF'
import PriceBlock from "@/components/ui/molecules/PriceBlock/PriceBlock";
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import VariantSelector from "@/components/ui/molecules/VariantSelector/VariantSelector";
import QuantitySelector from "@/components/ui/molecules/QuantitySelector/QuantitySelector";
import Button from "@/components/ui/atoms/Button/Button";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./ProductInfoPanel.module.css";

export default function ProductInfoPanel() {
  return (
    <section className={styles.panel}>
      <Heading level={1}>Wireless Headphones</Heading>

      <StarRating rating={4.5} />

      <PriceBlock
        price={79.99}
        originalPrice={99.99}
        discount={20}
      />

      <VariantSelector
        variants={[
          { id: "black", label: "Black" },
          { id: "white", label: "White" },
        ]}
      />

      <QuantitySelector />

      <Button>Add to Cart</Button>
    </section>
  );
}
EOF

cat > ProductInfoPanel/ProductInfoPanel.module.css <<'EOF'
.panel {
  display: flex;
  flex-direction: column;
  gap: 16px;
}
EOF

cat > ProductInfoPanel/ProductInfoPanel.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductInfoPanel from "./ProductInfoPanel";

const meta: Meta<typeof ProductInfoPanel> = {
  title: "Organisms/ProductInfoPanel",
  component: ProductInfoPanel,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductInfoPanel>;

export const Default: Story = {};
EOF


# ============================================================
# QASection
# ============================================================

mkdir -p QASection

cat > QASection/QASection.tsx <<'EOF'
import Accordion from "@/components/ui/molecules/Accordion/Accordion";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./QASection.module.css";

export default function QASection() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Questions & Answers</Heading>

      <Accordion title="What is the return policy?">
        Items can be returned within the eligible return period.
      </Accordion>

      <Accordion title="How long does shipping take?">
        Standard shipping typically takes several business days.
      </Accordion>

      <Accordion title="Can I track my order?">
        Yes. Tracking information is provided after shipment.
      </Accordion>
    </section>
  );
}
EOF

cat > QASection/QASection.module.css <<'EOF'
.section {
  width: 100%;
}

.section > * {
  margin-bottom: 8px;
}
EOF

cat > QASection/QASection.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import QASection from "./QASection";

const meta: Meta<typeof QASection> = {
  title: "Organisms/QASection",
  component: QASection,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof QASection>;

export const Default: Story = {};
EOF


# ============================================================
# RecentlyViewedCarousel
# ============================================================

mkdir -p RecentlyViewedCarousel

cat > RecentlyViewedCarousel/RecentlyViewedCarousel.tsx <<'EOF'
import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./RecentlyViewedCarousel.module.css";

export default function RecentlyViewedCarousel() {
  return (
    <section>
      <Heading level={2}>Recently Viewed</Heading>

      <div className={styles.carousel}>
        <ProductCard
          name="Product One"
          image="https://placehold.co/300x300"
          price={49.99}
        />

        <ProductCard
          name="Product Two"
          image="https://placehold.co/300x300"
          price={59.99}
        />

        <ProductCard
          name="Product Three"
          image="https://placehold.co/300x300"
          price={69.99}
        />
      </div>
    </section>
  );
}
EOF

cat > RecentlyViewedCarousel/RecentlyViewedCarousel.module.css <<'EOF'
.carousel {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  margin-top: 16px;
}
EOF

cat > RecentlyViewedCarousel/RecentlyViewedCarousel.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import RecentlyViewedCarousel from "./RecentlyViewedCarousel";

const meta: Meta<typeof RecentlyViewedCarousel> = {
  title: "Organisms/RecentlyViewedCarousel",
  component: RecentlyViewedCarousel,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RecentlyViewedCarousel>;

export const Default: Story = {};
EOF


# ============================================================
# RelatedProductsCarousel
# ============================================================

mkdir -p RelatedProductsCarousel

cat > RelatedProductsCarousel/RelatedProductsCarousel.tsx <<'EOF'
import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./RelatedProductsCarousel.module.css";

export default function RelatedProductsCarousel() {
  return (
    <section>
      <Heading level={2}>Related Products</Heading>

      <div className={styles.carousel}>
        <ProductCard
          name="Related Product One"
          image="https://placehold.co/300x300"
          price={39.99}
        />

        <ProductCard
          name="Related Product Two"
          image="https://placehold.co/300x300"
          price={59.99}
        />

        <ProductCard
          name="Related Product Three"
          image="https://placehold.co/300x300"
          price={89.99}
        />
      </div>
    </section>
  );
}
EOF

cat > RelatedProductsCarousel/RelatedProductsCarousel.module.css <<'EOF'
.carousel {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  margin-top: 16px;
}
EOF

cat > RelatedProductsCarousel/RelatedProductsCarousel.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import RelatedProductsCarousel from "./RelatedProductsCarousel";

const meta: Meta<typeof RelatedProductsCarousel> = {
  title: "Organisms/RelatedProductsCarousel",
  component: RelatedProductsCarousel,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RelatedProductsCarousel>;

export const Default: Story = {};
EOF


# ============================================================
# ReviewsSection
# ============================================================

mkdir -p ReviewsSection

cat > ReviewsSection/ReviewsSection.tsx <<'EOF'
import ReviewSnippet from "@/components/ui/molecules/ReviewSnippet/ReviewSnippet";
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./ReviewsSection.module.css";

export default function ReviewsSection() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Customer Reviews</Heading>

      <div className={styles.summary}>
        <StarRating rating={4.5} />
        <span>4.5 out of 5</span>
      </div>

      <div className={styles.reviews}>
        <ReviewSnippet
          author="John"
          rating={5}
          title="Excellent"
          content="Great product and fast shipping."
        />

        <ReviewSnippet
          author="Sarah"
          rating={4}
          title="Very good"
          content="Works exactly as expected."
        />
      </div>
    </section>
  );
}
EOF

cat > ReviewsSection/ReviewsSection.module.css <<'EOF'
.section {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.summary {
  display: flex;
  align-items: center;
  gap: 10px;
}

.reviews {
  display: flex;
  flex-direction: column;
  gap: 24px;
}
EOF

cat > ReviewsSection/ReviewsSection.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ReviewsSection from "./ReviewsSection";

const meta: Meta<typeof ReviewsSection> = {
  title: "Organisms/ReviewsSection",
  component: ReviewsSection,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ReviewsSection>;

export const Default: Story = {};
EOF


# ============================================================
# ReviewSubmissionForm
# ============================================================

mkdir -p ReviewSubmissionForm

cat > ReviewSubmissionForm/ReviewSubmissionForm.tsx <<'EOF'
import FormField from "@/components/ui/molecules/FormField/FormField";
import TextArea from "@/components/ui/atoms/TextArea/TextArea";
import Select from "@/components/ui/atoms/Select/Select";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./ReviewSubmissionForm.module.css";

export default function ReviewSubmissionForm() {
  return (
    <form className={styles.form}>
      <FormField label="Rating" required>
        <Select
          options={[
            { label: "5 Stars", value: "5" },
            { label: "4 Stars", value: "4" },
            { label: "3 Stars", value: "3" },
            { label: "2 Stars", value: "2" },
            { label: "1 Star", value: "1" },
          ]}
        />
      </FormField>

      <FormField label="Review" required>
        <TextArea placeholder="Write your review..." />
      </FormField>

      <Button>Submit Review</Button>
    </form>
  );
}
EOF

cat > ReviewSubmissionForm/ReviewSubmissionForm.module.css <<'EOF'
.form {
  max-width: 600px;
  display: flex;
  flex-direction: column;
  gap: 16px;
}
EOF

cat > ReviewSubmissionForm/ReviewSubmissionForm.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ReviewSubmissionForm from "./ReviewSubmissionForm";

const meta: Meta<typeof ReviewSubmissionForm> = {
  title: "Organisms/ReviewSubmissionForm",
  component: ReviewSubmissionForm,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ReviewSubmissionForm>;

export const Default: Story = {};
EOF


# ============================================================
# SearchResultsHeader
# ============================================================

mkdir -p SearchResultsHeader

cat > SearchResultsHeader/SearchResultsHeader.tsx <<'EOF'
import SearchFilterField from "@/components/ui/molecules/SearchFilterField/SearchFilterField";
import Text from "@/components/ui/atoms/Text/Text";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./SearchResultsHeader.module.css";

export interface SearchResultsHeaderProps {
  query?: string;
  resultCount?: number;
}

export default function SearchResultsHeader({
  query = "",
  resultCount = 0,
}: SearchResultsHeaderProps) {
  return (
    <header className={styles.header}>
      <div>
        <Heading level={1}>
          {query ? `Results for "${query}"` : "Search Results"}
        </Heading>

        <Text>{resultCount} results</Text>
      </div>

      <SearchFilterField />
    </header>
  );
}
EOF

cat > SearchResultsHeader/SearchResultsHeader.module.css <<'EOF'
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 24px;
  margin-bottom: 24px;
}

@media (max-width: 768px) {
  .header {
    flex-direction: column;
    align-items: stretch;
  }
}
EOF

cat > SearchResultsHeader/SearchResultsHeader.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import SearchResultsHeader from "./SearchResultsHeader";

const meta: Meta<typeof SearchResultsHeader> = {
  title: "Organisms/SearchResultsHeader",
  component: SearchResultsHeader,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchResultsHeader>;

export const Default: Story = {
  args: {
    query: "headphones",
    resultCount: 42,
  },
};
EOF


# ============================================================
# SortDropdown
# ============================================================

mkdir -p SortDropdown

cat > SortDropdown/SortDropdown.tsx <<'EOF'
import Select from "@/components/ui/atoms/Select/Select";
import styles from "./SortDropdown.module.css";

export default function SortDropdown() {
  return (
    <div className={styles.container}>
      <label htmlFor="sort">Sort by</label>

      <Select
        id="sort"
        options={[
          { label: "Recommended", value: "recommended" },
          { label: "Price: Low to High", value: "price-low" },
          { label: "Price: High to Low", value: "price-high" },
          { label: "Newest", value: "newest" },
        ]}
      />
    </div>
  );
}
EOF

cat > SortDropdown/SortDropdown.module.css <<'EOF'
.container {
  display: flex;
  align-items: center;
  gap: 8px;
}
EOF

cat > SortDropdown/SortDropdown.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import SortDropdown from "./SortDropdown";

const meta: Meta<typeof SortDropdown> = {
  title: "Organisms/SortDropdown",
  component: SortDropdown,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SortDropdown>;

export const Default: Story = {};
EOF


# ============================================================
# StickyBuyBox
# ============================================================

mkdir -p StickyBuyBox

cat > StickyBuyBox/StickyBuyBox.tsx <<'EOF'
import PriceBlock from "@/components/ui/molecules/PriceBlock/PriceBlock";
import QuantitySelector from "@/components/ui/molecules/QuantitySelector/QuantitySelector";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./StickyBuyBox.module.css";

export default function StickyBuyBox() {
  return (
    <aside className={styles.box}>
      <PriceBlock
        price={79.99}
        originalPrice={99.99}
      />

      <QuantitySelector />

      <Button>Add to Cart</Button>

      <Button>Buy Now</Button>
    </aside>
  );
}
EOF

cat > StickyBuyBox/StickyBuyBox.module.css <<'EOF'
.box {
  position: sticky;
  bottom: 0;
  display: flex;
  align-items: center;
  gap: 16px;
  padding: 16px;
  background: white;
  border-top: 1px solid #e5e7eb;
  box-shadow: 0 -4px 12px rgb(0 0 0 / 8%);
}
EOF

cat > StickyBuyBox/StickyBuyBox.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import StickyBuyBox from "./StickyBuyBox";

const meta: Meta<typeof StickyBuyBox> = {
  title: "Organisms/StickyBuyBox",
  component: StickyBuyBox,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StickyBuyBox>;

export const Default: Story = {};
EOF


# ============================================================
# ToastContainer
# ============================================================

mkdir -p ToastContainer

cat > ToastContainer/ToastContainer.tsx <<'EOF'
import Toast from "@/components/ui/molecules/Toast/Toast";
import styles from "./ToastContainer.module.css";

export interface ToastContainerProps {
  messages?: string[];
}

export default function ToastContainer({
  messages = ["Item added to cart."],
}: ToastContainerProps) {
  return (
    <div className={styles.container}>
      {messages.map((message, index) => (
        <Toast
          key={`${message}-${index}`}
          message={message}
          variant="success"
        />
      ))}
    </div>
  );
}
EOF

cat > ToastContainer/ToastContainer.module.css <<'EOF'
.container {
  position: fixed;
  top: 20px;
  right: 20px;
  width: 360px;
  display: flex;
  flex-direction: column;
  gap: 8px;
  z-index: 2000;
}
EOF

cat > ToastContainer/ToastContainer.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ToastContainer from "./ToastContainer";

const meta: Meta<typeof ToastContainer> = {
  title: "Organisms/ToastContainer",
  component: ToastContainer,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ToastContainer>;

export const Default: Story = {
  args: {
    messages: [
      "Item added to cart.",
      "Wishlist updated.",
    ],
  },
};
EOF


# ============================================================
# TrustBadgesRow
# ============================================================

mkdir -p TrustBadgesRow

cat > TrustBadgesRow/TrustBadgesRow.tsx <<'EOF'
import ShippingBadge from "@/components/ui/atoms/ShippingBadge/ShippingBadge";
import Badge from "@/components/ui/atoms/Badge/Badge";
import styles from "./TrustBadgesRow.module.css";

export default function TrustBadgesRow() {
  return (
    <div className={styles.row}>
      <ShippingBadge free />
      <Badge>Secure Checkout</Badge>
      <Badge>Easy Returns</Badge>
      <Badge>Trusted Seller</Badge>
    </div>
  );
}
EOF

cat > TrustBadgesRow/TrustBadgesRow.module.css <<'EOF'
.row {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  align-items: center;
}
EOF

cat > TrustBadgesRow/TrustBadgesRow.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import TrustBadgesRow from "./TrustBadgesRow";

const meta: Meta<typeof TrustBadgesRow> = {
  title: "Organisms/TrustBadgesRow",
  component: TrustBadgesRow,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof TrustBadgesRow>;

export const Default: Story = {};
EOF


# ============================================================
# WishlistGrid
# ============================================================

mkdir -p WishlistGrid

cat > WishlistGrid/WishlistGrid.tsx <<'EOF'
import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./WishlistGrid.module.css";

export default function WishlistGrid() {
  return (
    <section>
      <Heading level={1}>My Wishlist</Heading>

      <div className={styles.grid}>
        <ProductCard
          name="Wireless Headphones"
          image="https://placehold.co/300x300"
          price={79.99}
          rating={4.5}
        />

        <ProductCard
          name="Smart Watch"
          image="https://placehold.co/300x300"
          price={129.99}
          rating={4}
        />

        <ProductCard
          name="Bluetooth Speaker"
          image="https://placehold.co/300x300"
          price={49.99}
          rating={4.5}
        />
      </div>
    </section>
  );
}
EOF

cat > WishlistGrid/WishlistGrid.module.css <<'EOF'
.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
  margin-top: 20px;
}

@media (max-width: 768px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
EOF

cat > WishlistGrid/WishlistGrid.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import WishlistGrid from "./WishlistGrid";

const meta: Meta<typeof WishlistGrid> = {
  title: "Organisms/WishlistGrid",
  component: WishlistGrid,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof WishlistGrid>;

export const Default: Story = {};
EOF


# ============================================================
# FINISH
# ============================================================

echo ""
echo "=============================================="
echo " Organisms generated successfully!"
echo "=============================================="
echo ""
echo "Each organism contains:"
echo "  [Name].tsx"
echo "  [Name].module.css"
echo "  [Name].stories.tsx"
echo ""
echo "Storybook imports:"
echo "  @storybook/react-vite"
echo ""
echo "Molecule imports:"
echo "  @/components/ui/molecules/..."
echo ""
echo "Atom imports:"
echo "  @/components/ui/atoms/..."
echo ""