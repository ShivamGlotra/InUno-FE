#!/bin/bash

# ============================================================
# MOLECULES
# Run from:
# src/components/ui/molecules/
#
# Creates:
#   [Name]/[Name].tsx
#   [Name]/[Name].module.css
#   [Name]/[Name].stories.tsx
#
# Atom imports use:
#   @/components/ui/atoms/[Atom]/[Atom]
# ============================================================

# ------------------------------------------------------------
# Accordion
# ------------------------------------------------------------
mkdir -p Accordion

cat > Accordion/Accordion.tsx <<'EOF'
"use client";

import { useState, type ReactNode } from "react";
import styles from "./Accordion.module.css";

export interface AccordionProps {
  title: string;
  children: ReactNode;
  defaultOpen?: boolean;
}

export default function Accordion({
  title,
  children,
  defaultOpen = false,
}: AccordionProps) {
  const [open, setOpen] = useState(defaultOpen);

  return (
    <div className={styles.accordion}>
      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((value) => !value)}
        aria-expanded={open}
      >
        <span>{title}</span>
        <span className={styles.icon}>{open ? "−" : "+"}</span>
      </button>

      {open && <div className={styles.content}>{children}</div>}
    </div>
  );
}
EOF

cat > Accordion/Accordion.module.css <<'EOF'
.accordion {
  width: 100%;
  border-bottom: 1px solid #e5e7eb;
}

.trigger {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 16px 0;
  border: 0;
  background: transparent;
  cursor: pointer;
  font: inherit;
  text-align: left;
}

.icon {
  font-size: 20px;
}

.content {
  padding: 0 0 16px;
  color: #4b5563;
}
EOF

cat > Accordion/Accordion.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Accordion from "./Accordion";

const meta: Meta<typeof Accordion> = {
  title: "Molecules/Accordion",
  component: Accordion,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Accordion>;

export const Default: Story = {
  args: {
    title: "Product Information",
    children: "This section contains product information.",
  },
};

export const Open: Story = {
  args: {
    title: "Shipping Information",
    children: "Free shipping is available on eligible orders.",
    defaultOpen: true,
  },
};
EOF


# ------------------------------------------------------------
# AccountMenuTrigger
# ------------------------------------------------------------
mkdir -p AccountMenuTrigger

cat > AccountMenuTrigger/AccountMenuTrigger.tsx <<'EOF'
import Avatar from "@/components/ui/atoms/Avatar/Avatar";
import styles from "./AccountMenuTrigger.module.css";

export interface AccountMenuTriggerProps {
  name: string;
  avatar?: string;
  onClick?: () => void;
}

export default function AccountMenuTrigger({
  name,
  avatar,
  onClick,
}: AccountMenuTriggerProps) {
  return (
    <button className={styles.trigger} onClick={onClick} type="button">
      <Avatar src={avatar} alt={name} />
      <span className={styles.name}>{name}</span>
      <span className={styles.chevron}>⌄</span>
    </button>
  );
}
EOF

cat > AccountMenuTrigger/AccountMenuTrigger.module.css <<'EOF'
.trigger {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  border: 0;
  background: transparent;
  cursor: pointer;
  padding: 4px;
}

.name {
  font-size: 14px;
  font-weight: 500;
}

.chevron {
  font-size: 14px;
}
EOF

cat > AccountMenuTrigger/AccountMenuTrigger.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import AccountMenuTrigger from "./AccountMenuTrigger";

const meta: Meta<typeof AccountMenuTrigger> = {
  title: "Molecules/AccountMenuTrigger",
  component: AccountMenuTrigger,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AccountMenuTrigger>;

export const Default: Story = {
  args: {
    name: "John Doe",
  },
};
EOF


# ------------------------------------------------------------
# AddressFormRow
# ------------------------------------------------------------
mkdir -p AddressFormRow

cat > AddressFormRow/AddressFormRow.tsx <<'EOF'
import Label from "@/components/ui/atoms/Label/Label";
import Input from "@/components/ui/atoms/Input/Input";
import styles from "./AddressFormRow.module.css";

export interface AddressFormRowProps {
  label: string;
  placeholder?: string;
  value?: string;
  required?: boolean;
}

export default function AddressFormRow({
  label,
  placeholder,
  value,
  required,
}: AddressFormRowProps) {
  return (
    <div className={styles.row}>
      <Label required={required}>{label}</Label>
      <Input placeholder={placeholder} defaultValue={value} />
    </div>
  );
}
EOF

cat > AddressFormRow/AddressFormRow.module.css <<'EOF'
.row {
  display: flex;
  flex-direction: column;
  gap: 6px;
  width: 100%;
}
EOF

cat > AddressFormRow/AddressFormRow.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import AddressFormRow from "./AddressFormRow";

const meta: Meta<typeof AddressFormRow> = {
  title: "Molecules/AddressFormRow",
  component: AddressFormRow,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AddressFormRow>;

export const Default: Story = {
  args: {
    label: "Street Address",
    placeholder: "Enter your address",
  },
};

export const Required: Story = {
  args: {
    label: "City",
    placeholder: "Enter your city",
    required: true,
  },
};
EOF


# ------------------------------------------------------------
# Alert
# ------------------------------------------------------------
mkdir -p Alert

cat > Alert/Alert.tsx <<'EOF'
import Icon from "@/components/ui/atoms/Icon/Icon";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./Alert.module.css";

export type AlertVariant = "info" | "success" | "warning" | "error";

export interface AlertProps {
  title?: string;
  message: string;
  variant?: AlertVariant;
  onClose?: () => void;
}

export default function Alert({
  title,
  message,
  variant = "info",
  onClose,
}: AlertProps) {
  return (
    <div className={`${styles.alert} ${styles[variant]}`} role="alert">
      <Icon>
        {variant === "success" ? "✓" : variant === "error" ? "!" : "i"}
      </Icon>

      <div className={styles.content}>
        {title && <strong>{title}</strong>}
        <Text>{message}</Text>
      </div>

      {onClose && (
        <button className={styles.close} onClick={onClose} type="button">
          ×
        </button>
      )}
    </div>
  );
}
EOF

cat > Alert/Alert.module.css <<'EOF'
.alert {
  display: flex;
  align-items: flex-start;
  gap: 12px;
  padding: 12px 16px;
  border-radius: 6px;
  border: 1px solid #d1d5db;
}

.info {
  background: #eff6ff;
}

.success {
  background: #ecfdf5;
}

.warning {
  background: #fffbeb;
}

.error {
  background: #fef2f2;
}

.content {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.close {
  border: 0;
  background: transparent;
  cursor: pointer;
  font-size: 18px;
}
EOF

cat > Alert/Alert.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Alert from "./Alert";

const meta: Meta<typeof Alert> = {
  title: "Molecules/Alert",
  component: Alert,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Alert>;

export const Info: Story = {
  args: {
    title: "Information",
    message: "Your order is being processed.",
    variant: "info",
  },
};

export const Success: Story = {
  args: {
    title: "Success",
    message: "Your order has been placed.",
    variant: "success",
  },
};

export const Warning: Story = {
  args: {
    message: "Only a few items are left.",
    variant: "warning",
  },
};

export const Error: Story = {
  args: {
    title: "Error",
    message: "Something went wrong.",
    variant: "error",
  },
};
EOF


# ------------------------------------------------------------
# Breadcrumb
# ------------------------------------------------------------
mkdir -p Breadcrumb

cat > Breadcrumb/Breadcrumb.tsx <<'EOF'
import Link from "@/components/ui/atoms/Link/Link";
import styles from "./Breadcrumb.module.css";

export interface BreadcrumbItem {
  label: string;
  href?: string;
}

export interface BreadcrumbProps {
  items: BreadcrumbItem[];
}

export default function Breadcrumb({ items }: BreadcrumbProps) {
  return (
    <nav aria-label="Breadcrumb">
      <ol className={styles.list}>
        {items.map((item, index) => (
          <li key={`${item.label}-${index}`} className={styles.item}>
            {item.href && index !== items.length - 1 ? (
              <Link href={item.href}>{item.label}</Link>
            ) : (
              <span>{item.label}</span>
            )}

            {index < items.length - 1 && (
              <span className={styles.separator}>/</span>
            )}
          </li>
        ))}
      </ol>
    </nav>
  );
}
EOF

cat > Breadcrumb/Breadcrumb.module.css <<'EOF'
.list {
  display: flex;
  align-items: center;
  gap: 8px;
  list-style: none;
  padding: 0;
  margin: 0;
  font-size: 14px;
}

.item {
  display: flex;
  align-items: center;
  gap: 8px;
}

.separator {
  color: #9ca3af;
}
EOF

cat > Breadcrumb/Breadcrumb.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Breadcrumb from "./Breadcrumb";

const meta: Meta<typeof Breadcrumb> = {
  title: "Molecules/Breadcrumb",
  component: Breadcrumb,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Breadcrumb>;

export const Default: Story = {
  args: {
    items: [
      { label: "Home", href: "/" },
      { label: "Electronics", href: "/electronics" },
      { label: "Laptops" },
    ],
  },
};
EOF


# ------------------------------------------------------------
# Card
# ------------------------------------------------------------
mkdir -p Card

cat > Card/Card.tsx <<'EOF'
import type { ReactNode } from "react";
import styles from "./Card.module.css";

export interface CardProps {
  children: ReactNode;
  onClick?: () => void;
}

export default function Card({ children, onClick }: CardProps) {
  return (
    <div
      className={`${styles.card} ${onClick ? styles.clickable : ""}`}
      onClick={onClick}
      role={onClick ? "button" : undefined}
    >
      {children}
    </div>
  );
}
EOF

cat > Card/Card.module.css <<'EOF'
.card {
  width: 100%;
  border: 1px solid #e5e7eb;
  border-radius: 8px;
  background: #fff;
  padding: 16px;
  box-sizing: border-box;
}

.clickable {
  cursor: pointer;
}
EOF

cat > Card/Card.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Card from "./Card";
import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";

const meta: Meta<typeof Card> = {
  title: "Molecules/Card",
  component: Card,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Card>;

export const Default: Story = {
  render: () => (
    <Card>
      <Heading level={3}>Product Card</Heading>
      <Text>This is a reusable card molecule.</Text>
    </Card>
  ),
};
EOF


# ------------------------------------------------------------
# CartLineItemSummary
# ------------------------------------------------------------
mkdir -p CartLineItemSummary

cat > CartLineItemSummary/CartLineItemSummary.tsx <<'EOF'
import Image from "@/components/ui/atoms/Image/Image";
import Price from "@/components/ui/atoms/Price/Price";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./CartLineItemSummary.module.css";

export interface CartLineItemSummaryProps {
  name: string;
  image: string;
  quantity: number;
  price: number;
}

export default function CartLineItemSummary({
  name,
  image,
  quantity,
  price,
}: CartLineItemSummaryProps) {
  return (
    <div className={styles.item}>
      <Image src={image} alt={name} width={64} height={64} />

      <div className={styles.info}>
        <Text>{name}</Text>
        <Text size="sm">Qty: {quantity}</Text>
      </div>

      <Price amount={price * quantity} />
    </div>
  );
}
EOF

cat > CartLineItemSummary/CartLineItemSummary.module.css <<'EOF'
.item {
  display: flex;
  align-items: center;
  gap: 12px;
}

.info {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 4px;
}
EOF

cat > CartLineItemSummary/CartLineItemSummary.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import CartLineItemSummary from "./CartLineItemSummary";

const meta: Meta<typeof CartLineItemSummary> = {
  title: "Molecules/CartLineItemSummary",
  component: CartLineItemSummary,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CartLineItemSummary>;

export const Default: Story = {
  args: {
    name: "Wireless Headphones",
    image: "https://placehold.co/64x64",
    quantity: 2,
    price: 49.99,
  },
};
EOF


# ------------------------------------------------------------
# CouponAppliedTag
# ------------------------------------------------------------
mkdir -p CouponAppliedTag

cat > CouponAppliedTag/CouponAppliedTag.tsx <<'EOF'
import Chip from "@/components/ui/atoms/Chip/Chip";
import styles from "./CouponAppliedTag.module.css";

export interface CouponAppliedTagProps {
  code: string;
  onRemove?: () => void;
}

export default function CouponAppliedTag({
  code,
  onRemove,
}: CouponAppliedTagProps) {
  return (
    <div className={styles.tag}>
      <Chip label={code} />

      {onRemove && (
        <button type="button" onClick={onRemove} className={styles.remove}>
          ×
        </button>
      )}
    </div>
  );
}
EOF

cat > CouponAppliedTag/CouponAppliedTag.module.css <<'EOF'
.tag {
  display: inline-flex;
  align-items: center;
  gap: 4px;
}

.remove {
  border: 0;
  background: transparent;
  cursor: pointer;
}
EOF

cat > CouponAppliedTag/CouponAppliedTag.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import CouponAppliedTag from "./CouponAppliedTag";

const meta: Meta<typeof CouponAppliedTag> = {
  title: "Molecules/CouponAppliedTag",
  component: CouponAppliedTag,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CouponAppliedTag>;

export const Default: Story = {
  args: {
    code: "SAVE20",
  },
};

export const Removable: Story = {
  args: {
    code: "WELCOME10",
    onRemove: () => {},
  },
};
EOF


# ------------------------------------------------------------
# DeliveryEstimate
# ------------------------------------------------------------
mkdir -p DeliveryEstimate

cat > DeliveryEstimate/DeliveryEstimate.tsx <<'EOF'
import Icon from "@/components/ui/atoms/Icon/Icon";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./DeliveryEstimate.module.css";

export interface DeliveryEstimateProps {
  date: string;
  location?: string;
}

export default function DeliveryEstimate({
  date,
  location,
}: DeliveryEstimateProps) {
  return (
    <div className={styles.estimate}>
      <Icon>🚚</Icon>

      <div>
        <Text>Delivery by {date}</Text>
        {location && <Text size="sm">{location}</Text>}
      </div>
    </div>
  );
}
EOF

cat > DeliveryEstimate/DeliveryEstimate.module.css <<'EOF'
.estimate {
  display: flex;
  align-items: center;
  gap: 8px;
}
EOF

cat > DeliveryEstimate/DeliveryEstimate.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import DeliveryEstimate from "./DeliveryEstimate";

const meta: Meta<typeof DeliveryEstimate> = {
  title: "Molecules/DeliveryEstimate",
  component: DeliveryEstimate,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof DeliveryEstimate>;

export const Default: Story = {
  args: {
    date: "Friday, August 8",
  },
};

export const WithLocation: Story = {
  args: {
    date: "Friday, August 8",
    location: "Toronto, ON",
  },
};
EOF


# ------------------------------------------------------------
# Drawer
# ------------------------------------------------------------
mkdir -p Drawer

cat > Drawer/Drawer.tsx <<'EOF'
"use client";

import type { ReactNode } from "react";
import styles from "./Drawer.module.css";

export interface DrawerProps {
  open: boolean;
  children: ReactNode;
  title?: string;
  onClose: () => void;
}

export default function Drawer({
  open,
  children,
  title,
  onClose,
}: DrawerProps) {
  if (!open) return null;

  return (
    <div className={styles.overlay} onClick={onClose}>
      <aside className={styles.drawer} onClick={(e) => e.stopPropagation()}>
        <div className={styles.header}>
          {title && <strong>{title}</strong>}

          <button type="button" onClick={onClose}>
            ×
          </button>
        </div>

        <div className={styles.content}>{children}</div>
      </aside>
    </div>
  );
}
EOF

cat > Drawer/Drawer.module.css <<'EOF'
.overlay {
  position: fixed;
  inset: 0;
  background: rgb(0 0 0 / 40%);
  display: flex;
  justify-content: flex-end;
  z-index: 1000;
}

.drawer {
  width: min(400px, 90vw);
  height: 100%;
  background: white;
  padding: 20px;
  box-sizing: border-box;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.header button {
  border: 0;
  background: transparent;
  font-size: 24px;
  cursor: pointer;
}
EOF

cat > Drawer/Drawer.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Drawer from "./Drawer";

const meta: Meta<typeof Drawer> = {
  title: "Molecules/Drawer",
  component: Drawer,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Drawer>;

export const Open: Story = {
  args: {
    open: true,
    title: "Menu",
    onClose: () => {},
    children: "Drawer content goes here.",
  },
};
EOF


# ------------------------------------------------------------
# EmptyState
# ------------------------------------------------------------
mkdir -p EmptyState

cat > EmptyState/EmptyState.tsx <<'EOF'
import type { ReactNode } from "react";
import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./EmptyState.module.css";

export interface EmptyStateProps {
  title: string;
  description?: string;
  action?: ReactNode;
}

export default function EmptyState({
  title,
  description,
  action,
}: EmptyStateProps) {
  return (
    <div className={styles.empty}>
      <div className={styles.icon}>∅</div>
      <Heading level={3}>{title}</Heading>

      {description && <Text>{description}</Text>}

      {action}
    </div>
  );
}
EOF

cat > EmptyState/EmptyState.module.css <<'EOF'
.empty {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  gap: 12px;
  padding: 48px 24px;
}

.icon {
  font-size: 40px;
  color: #9ca3af;
}
EOF

cat > EmptyState/EmptyState.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import EmptyState from "./EmptyState";

const meta: Meta<typeof EmptyState> = {
  title: "Molecules/EmptyState",
  component: EmptyState,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof EmptyState>;

export const Default: Story = {
  args: {
    title: "No products found",
    description: "Try adjusting your search or filters.",
  },
};
EOF


# ------------------------------------------------------------
# FormField
# ------------------------------------------------------------
mkdir -p FormField

cat > FormField/FormField.tsx <<'EOF'
import type { ReactNode } from "react";
import Label from "@/components/ui/atoms/Label/Label";
import FormHelperText from "@/components/ui/atoms/FormHelperText/FormHelperText";
import styles from "./FormField.module.css";

export interface FormFieldProps {
  label: string;
  children: ReactNode;
  helperText?: string;
  error?: string;
  required?: boolean;
}

export default function FormField({
  label,
  children,
  helperText,
  error,
  required,
}: FormFieldProps) {
  return (
    <div className={styles.field}>
      <Label required={required}>{label}</Label>

      {children}

      {(helperText || error) && (
        <FormHelperText error={!!error}>
          {error || helperText}
        </FormHelperText>
      )}
    </div>
  );
}
EOF

cat > FormField/FormField.module.css <<'EOF'
.field {
  display: flex;
  flex-direction: column;
  gap: 6px;
}
EOF

cat > FormField/FormField.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import FormField from "./FormField";
import Input from "@/components/ui/atoms/Input/Input";

const meta: Meta<typeof FormField> = {
  title: "Molecules/FormField",
  component: FormField,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof FormField>;

export const Default: Story = {
  render: () => (
    <FormField label="Email">
      <Input placeholder="Enter your email" />
    </FormField>
  ),
};

export const Required: Story = {
  render: () => (
    <FormField label="Password" required helperText="Minimum 8 characters">
      <Input type="password" />
    </FormField>
  ),
};

export const Error: Story = {
  render: () => (
    <FormField label="Email" error="Please enter a valid email address">
      <Input />
    </FormField>
  ),
};
EOF


# ------------------------------------------------------------
# ImageGalleryThumbnail
# ------------------------------------------------------------
mkdir -p ImageGalleryThumbnail

cat > ImageGalleryThumbnail/ImageGalleryThumbnail.tsx <<'EOF'
import Image from "@/components/ui/atoms/Image/Image";
import styles from "./ImageGalleryThumbnail.module.css";

export interface ImageGalleryThumbnailProps {
  src: string;
  alt: string;
  selected?: boolean;
  onClick?: () => void;
}

export default function ImageGalleryThumbnail({
  src,
  alt,
  selected = false,
  onClick,
}: ImageGalleryThumbnailProps) {
  return (
    <button
      type="button"
      className={`${styles.thumbnail} ${selected ? styles.selected : ""}`}
      onClick={onClick}
    >
      <Image src={src} alt={alt} width={72} height={72} />
    </button>
  );
}
EOF

cat > ImageGalleryThumbnail/ImageGalleryThumbnail.module.css <<'EOF'
.thumbnail {
  padding: 2px;
  border: 1px solid #d1d5db;
  background: white;
  cursor: pointer;
}

.selected {
  border: 2px solid #111827;
}
EOF

cat > ImageGalleryThumbnail/ImageGalleryThumbnail.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ImageGalleryThumbnail from "./ImageGalleryThumbnail";

const meta: Meta<typeof ImageGalleryThumbnail> = {
  title: "Molecules/ImageGalleryThumbnail",
  component: ImageGalleryThumbnail,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ImageGalleryThumbnail>;

export const Default: Story = {
  args: {
    src: "https://placehold.co/72x72",
    alt: "Product",
  },
};

export const Selected: Story = {
  args: {
    src: "https://placehold.co/72x72",
    alt: "Selected product",
    selected: true,
  },
};
EOF


# ------------------------------------------------------------
# LanguageCurrencySelector
# ------------------------------------------------------------
mkdir -p LanguageCurrencySelector

cat > LanguageCurrencySelector/LanguageCurrencySelector.tsx <<'EOF'
import Select from "@/components/ui/atoms/Select/Select";
import styles from "./LanguageCurrencySelector.module.css";

export interface LanguageCurrencySelectorProps {
  language?: string;
  currency?: string;
}

export default function LanguageCurrencySelector({
  language = "English",
  currency = "CAD",
}: LanguageCurrencySelectorProps) {
  return (
    <div className={styles.selector}>
      <Select
        options={[
          { label: language, value: language },
        ]}
      />

      <Select
        options={[
          { label: currency, value: currency },
        ]}
      />
    </div>
  );
}
EOF

cat > LanguageCurrencySelector/LanguageCurrencySelector.module.css <<'EOF'
.selector {
  display: flex;
  align-items: center;
  gap: 8px;
}
EOF

cat > LanguageCurrencySelector/LanguageCurrencySelector.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import LanguageCurrencySelector from "./LanguageCurrencySelector";

const meta: Meta<typeof LanguageCurrencySelector> = {
  title: "Molecules/LanguageCurrencySelector",
  component: LanguageCurrencySelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof LanguageCurrencySelector>;

export const Default: Story = {
  args: {
    language: "English",
    currency: "CAD",
  },
};

export const US: Story = {
  args: {
    language: "English",
    currency: "USD",
  },
};
EOF


# ------------------------------------------------------------
# LoadingCard
# ------------------------------------------------------------
mkdir -p LoadingCard

cat > LoadingCard/LoadingCard.tsx <<'EOF'
import Skeleton from "@/components/ui/atoms/Skeleton/Skeleton";
import styles from "./LoadingCard.module.css";

export interface LoadingCardProps {
  imageHeight?: number;
}

export default function LoadingCard({
  imageHeight = 200,
}: LoadingCardProps) {
  return (
    <div className={styles.card}>
      <Skeleton width="100%" height={`${imageHeight}px`} />

      <div className={styles.content}>
        <Skeleton width="70%" height="20px" />
        <Skeleton width="45%" height="16px" />
        <Skeleton width="30%" height="24px" />
      </div>
    </div>
  );
}
EOF

cat > LoadingCard/LoadingCard.module.css <<'EOF'
.card {
  border: 1px solid #e5e7eb;
  border-radius: 8px;
  overflow: hidden;
}

.content {
  display: flex;
  flex-direction: column;
  gap: 10px;
  padding: 16px;
}
EOF

cat > LoadingCard/LoadingCard.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import LoadingCard from "./LoadingCard";

const meta: Meta<typeof LoadingCard> = {
  title: "Molecules/LoadingCard",
  component: LoadingCard,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof LoadingCard>;

export const Default: Story = {};
EOF


# ------------------------------------------------------------
# Modal
# ------------------------------------------------------------
mkdir -p Modal

cat > Modal/Modal.tsx <<'EOF'
"use client";

import type { ReactNode } from "react";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./Modal.module.css";

export interface ModalProps {
  open: boolean;
  title?: string;
  children: ReactNode;
  onClose: () => void;
}

export default function Modal({
  open,
  title,
  children,
  onClose,
}: ModalProps) {
  if (!open) return null;

  return (
    <div className={styles.overlay} onClick={onClose}>
      <div
        className={styles.modal}
        onClick={(event) => event.stopPropagation()}
      >
        <div className={styles.header}>
          {title && <Heading level={3}>{title}</Heading>}

          <button type="button" onClick={onClose}>
            ×
          </button>
        </div>

        <div>{children}</div>
      </div>
    </div>
  );
}
EOF

cat > Modal/Modal.module.css <<'EOF'
.overlay {
  position: fixed;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgb(0 0 0 / 50%);
  z-index: 1000;
}

.modal {
  width: min(500px, 90vw);
  background: white;
  border-radius: 8px;
  padding: 24px;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.header button {
  border: 0;
  background: transparent;
  font-size: 24px;
  cursor: pointer;
}
EOF

cat > Modal/Modal.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Modal from "./Modal";

const meta: Meta<typeof Modal> = {
  title: "Molecules/Modal",
  component: Modal,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Modal>;

export const Open: Story = {
  args: {
    open: true,
    title: "Confirm Action",
    onClose: () => {},
    children: "Are you sure you want to continue?",
  },
};
EOF


# ------------------------------------------------------------
# NavLink
# ------------------------------------------------------------
mkdir -p NavLink

cat > NavLink/NavLink.tsx <<'EOF'
import Link from "@/components/ui/atoms/Link/Link";
import styles from "./NavLink.module.css";

export interface NavLinkProps {
  href: string;
  children: React.ReactNode;
  active?: boolean;
}

export default function NavLink({
  href,
  children,
  active = false,
}: NavLinkProps) {
  return (
    <Link href={href} className={active ? styles.active : styles.link}>
      {children}
    </Link>
  );
}
EOF

cat > NavLink/NavLink.module.css <<'EOF'
.link {
  text-decoration: none;
  color: inherit;
  padding: 8px 12px;
}

.active {
  color: #111827;
  font-weight: 600;
  text-decoration: underline;
  padding: 8px 12px;
}
EOF

cat > NavLink/NavLink.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import NavLink from "./NavLink";

const meta: Meta<typeof NavLink> = {
  title: "Molecules/NavLink",
  component: NavLink,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof NavLink>;

export const Default: Story = {
  args: {
    href: "#",
    children: "Products",
  },
};

export const Active: Story = {
  args: {
    href: "#",
    children: "Products",
    active: true,
  },
};
EOF


# ------------------------------------------------------------
# OrderSummaryRow
# ------------------------------------------------------------
mkdir -p OrderSummaryRow

cat > OrderSummaryRow/OrderSummaryRow.tsx <<'EOF'
import Price from "@/components/ui/atoms/Price/Price";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./OrderSummaryRow.module.css";

export interface OrderSummaryRowProps {
  label: string;
  amount: number;
  emphasized?: boolean;
}

export default function OrderSummaryRow({
  label,
  amount,
  emphasized = false,
}: OrderSummaryRowProps) {
  return (
    <div className={`${styles.row} ${emphasized ? styles.emphasized : ""}`}>
      <Text>{label}</Text>
      <Price amount={amount} />
    </div>
  );
}
EOF

cat > OrderSummaryRow/OrderSummaryRow.module.css <<'EOF'
.row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 0;
}

.emphasized {
  font-weight: 700;
  border-top: 1px solid #e5e7eb;
  margin-top: 8px;
  padding-top: 16px;
}
EOF

cat > OrderSummaryRow/OrderSummaryRow.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import OrderSummaryRow from "./OrderSummaryRow";

const meta: Meta<typeof OrderSummaryRow> = {
  title: "Molecules/OrderSummaryRow",
  component: OrderSummaryRow,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof OrderSummaryRow>;

export const Subtotal: Story = {
  args: {
    label: "Subtotal",
    amount: 99.99,
  },
};

export const Total: Story = {
  args: {
    label: "Total",
    amount: 109.99,
    emphasized: true,
  },
};
EOF


# ------------------------------------------------------------
# PaymentMethodOption
# ------------------------------------------------------------
mkdir -p PaymentMethodOption

cat > PaymentMethodOption/PaymentMethodOption.tsx <<'EOF'
import Radio from "@/components/ui/atoms/Radio/Radio";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./PaymentMethodOption.module.css";

export interface PaymentMethodOptionProps {
  id: string;
  name: string;
  description?: string;
  selected?: boolean;
}

export default function PaymentMethodOption({
  id,
  name,
  description,
  selected,
}: PaymentMethodOptionProps) {
  return (
    <label className={`${styles.option} ${selected ? styles.selected : ""}`}>
      <Radio
        name="payment-method"
        value={id}
        defaultChecked={selected}
      />

      <div>
        <Text>{name}</Text>
        {description && <Text size="sm">{description}</Text>}
      </div>
    </label>
  );
}
EOF

cat > PaymentMethodOption/PaymentMethodOption.module.css <<'EOF'
.option {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 16px;
  border: 1px solid #d1d5db;
  border-radius: 8px;
  cursor: pointer;
}

.selected {
  border-color: #111827;
}
EOF

cat > PaymentMethodOption/PaymentMethodOption.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import PaymentMethodOption from "./PaymentMethodOption";

const meta: Meta<typeof PaymentMethodOption> = {
  title: "Molecules/PaymentMethodOption",
  component: PaymentMethodOption,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof PaymentMethodOption>;

export const CreditCard: Story = {
  args: {
    id: "card",
    name: "Credit Card",
    description: "Visa ending in 4242",
  },
};

export const Selected: Story = {
  args: {
    id: "paypal",
    name: "PayPal",
    description: "Pay with PayPal",
    selected: true,
  },
};
EOF


# ------------------------------------------------------------
# PriceBlock
# ------------------------------------------------------------
mkdir -p PriceBlock

cat > PriceBlock/PriceBlock.tsx <<'EOF'
import DiscountBadge from "@/components/ui/atoms/DiscountBadge/DiscountBadge";
import Price from "@/components/ui/atoms/Price/Price";
import StrikethroughPrice from "@/components/ui/atoms/StrikethroughPrice/StrikethroughPrice";
import styles from "./PriceBlock.module.css";

export interface PriceBlockProps {
  price: number;
  originalPrice?: number;
  discount?: number;
}

export default function PriceBlock({
  price,
  originalPrice,
  discount,
}: PriceBlockProps) {
  return (
    <div className={styles.block}>
      <div className={styles.prices}>
        <Price amount={price} />

        {originalPrice !== undefined && (
          <StrikethroughPrice amount={originalPrice} />
        )}
      </div>

      {discount !== undefined && (
        <DiscountBadge percentage={discount} />
      )}
    </div>
  );
}
EOF

cat > PriceBlock/PriceBlock.module.css <<'EOF'
.block {
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.prices {
  display: flex;
  align-items: center;
  gap: 8px;
}
EOF

cat > PriceBlock/PriceBlock.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import PriceBlock from "./PriceBlock";

const meta: Meta<typeof PriceBlock> = {
  title: "Molecules/PriceBlock",
  component: PriceBlock,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof PriceBlock>;

export const Regular: Story = {
  args: {
    price: 49.99,
  },
};

export const Discounted: Story = {
  args: {
    price: 39.99,
    originalPrice: 49.99,
    discount: 20,
  },
};
EOF


# ------------------------------------------------------------
# ProductBadgeGroup
# ------------------------------------------------------------
mkdir -p ProductBadgeGroup

cat > ProductBadgeGroup/ProductBadgeGroup.tsx <<'EOF'
import Badge from "@/components/ui/atoms/Badge/Badge";
import DiscountBadge from "@/components/ui/atoms/DiscountBadge/DiscountBadge";
import ShippingBadge from "@/components/ui/atoms/ShippingBadge/ShippingBadge";
import styles from "./ProductBadgeGroup.module.css";

export interface ProductBadgeGroupProps {
  discount?: number;
  shipping?: boolean;
  label?: string;
}

export default function ProductBadgeGroup({
  discount,
  shipping,
  label,
}: ProductBadgeGroupProps) {
  return (
    <div className={styles.group}>
      {label && <Badge>{label}</Badge>}
      {discount !== undefined && (
        <DiscountBadge percentage={discount} />
      )}
      {shipping && <ShippingBadge free />}
    </div>
  );
}
EOF

cat > ProductBadgeGroup/ProductBadgeGroup.module.css <<'EOF'
.group {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
}
EOF

cat > ProductBadgeGroup/ProductBadgeGroup.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductBadgeGroup from "./ProductBadgeGroup";

const meta: Meta<typeof ProductBadgeGroup> = {
  title: "Molecules/ProductBadgeGroup",
  component: ProductBadgeGroup,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductBadgeGroup>;

export const Default: Story = {
  args: {
    label: "Best Seller",
    discount: 20,
    shipping: true,
  },
};

export const DiscountOnly: Story = {
  args: {
    discount: 15,
  },
};
EOF


# ------------------------------------------------------------
# ProductThumbnail
# ------------------------------------------------------------
mkdir -p ProductThumbnail

cat > ProductThumbnail/ProductThumbnail.tsx <<'EOF'
import Image from "@/components/ui/atoms/Image/Image";
import WishlistIcon from "@/components/ui/atoms/WishlistIcon/WishlistIcon";
import styles from "./ProductThumbnail.module.css";

export interface ProductThumbnailProps {
  src: string;
  alt: string;
  wishlist?: boolean;
}

export default function ProductThumbnail({
  src,
  alt,
  wishlist = true,
}: ProductThumbnailProps) {
  return (
    <div className={styles.thumbnail}>
      <Image src={src} alt={alt} width={300} height={300} />

      {wishlist && (
        <div className={styles.wishlist}>
          <WishlistIcon />
        </div>
      )}
    </div>
  );
}
EOF

cat > ProductThumbnail/ProductThumbnail.module.css <<'EOF'
.thumbnail {
  position: relative;
  width: 100%;
}

.wishlist {
  position: absolute;
  top: 8px;
  right: 8px;
}
EOF

cat > ProductThumbnail/ProductThumbnail.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductThumbnail from "./ProductThumbnail";

const meta: Meta<typeof ProductThumbnail> = {
  title: "Molecules/ProductThumbnail",
  component: ProductThumbnail,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductThumbnail>;

export const Default: Story = {
  args: {
    src: "https://placehold.co/300x300",
    alt: "Product",
  },
};

export const WithoutWishlist: Story = {
  args: {
    src: "https://placehold.co/300x300",
    alt: "Product",
    wishlist: false,
  },
};
EOF


# ------------------------------------------------------------
# PromoCodeInput
# ------------------------------------------------------------
mkdir -p PromoCodeInput

cat > PromoCodeInput/PromoCodeInput.tsx <<'EOF'
"use client";

import { useState } from "react";
import Input from "@/components/ui/atoms/Input/Input";
import styles from "./PromoCodeInput.module.css";

export interface PromoCodeInputProps {
  onApply?: (code: string) => void;
}

export default function PromoCodeInput({
  onApply,
}: PromoCodeInputProps) {
  const [code, setCode] = useState("");

  return (
    <div className={styles.container}>
      <Input
        value={code}
        onChange={(event) => setCode(event.target.value)}
        placeholder="Promo code"
      />

      <button
        type="button"
        onClick={() => onApply?.(code)}
      >
        Apply
      </button>
    </div>
  );
}
EOF

cat > PromoCodeInput/PromoCodeInput.module.css <<'EOF'
.container {
  display: flex;
  gap: 8px;
}

.container button {
  padding: 0 16px;
  border: 1px solid #111827;
  background: white;
  border-radius: 6px;
  cursor: pointer;
}
EOF

cat > PromoCodeInput/PromoCodeInput.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import PromoCodeInput from "./PromoCodeInput";

const meta: Meta<typeof PromoCodeInput> = {
  title: "Molecules/PromoCodeInput",
  component: PromoCodeInput,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof PromoCodeInput>;

export const Default: Story = {
  args: {
    onApply: () => {},
  },
};
EOF


# ------------------------------------------------------------
# QuantitySelector
# ------------------------------------------------------------
mkdir -p QuantitySelector

cat > QuantitySelector/QuantitySelector.tsx <<'EOF'
"use client";

import { useState } from "react";
import QuantityStepperButton from "@/components/ui/atoms/QuantityStepperButton/QuantityStepperButton";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./QuantitySelector.module.css";

export interface QuantitySelectorProps {
  initialQuantity?: number;
  min?: number;
  max?: number;
}

export default function QuantitySelector({
  initialQuantity = 1,
  min = 1,
  max = 99,
}: QuantitySelectorProps) {
  const [quantity, setQuantity] = useState(initialQuantity);

  return (
    <div className={styles.selector}>
      <QuantityStepperButton
        action="decrease"
        disabled={quantity <= min}
        onClick={() =>
          setQuantity((value) => Math.max(min, value - 1))
        }
      />

      <Text>{quantity}</Text>

      <QuantityStepperButton
        action="increase"
        disabled={quantity >= max}
        onClick={() =>
          setQuantity((value) => Math.min(max, value + 1))
        }
      />
    </div>
  );
}
EOF

cat > QuantitySelector/QuantitySelector.module.css <<'EOF'
.selector {
  display: inline-flex;
  align-items: center;
  gap: 16px;
  border: 1px solid #d1d5db;
  border-radius: 6px;
  padding: 4px 8px;
}
EOF

cat > QuantitySelector/QuantitySelector.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import QuantitySelector from "./QuantitySelector";

const meta: Meta<typeof QuantitySelector> = {
  title: "Molecules/QuantitySelector",
  component: QuantitySelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof QuantitySelector>;

export const Default: Story = {
  args: {
    initialQuantity: 1,
  },
};

export const StartingAtFive: Story = {
  args: {
    initialQuantity: 5,
  },
};
EOF


# ------------------------------------------------------------
# RatingBreakdownBar
# ------------------------------------------------------------
mkdir -p RatingBreakdownBar

cat > RatingBreakdownBar/RatingBreakdownBar.tsx <<'EOF'
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./RatingBreakdownBar.module.css";

export interface RatingBreakdownBarProps {
  rating: number;
  percentage: number;
}

export default function RatingBreakdownBar({
  rating,
  percentage,
}: RatingBreakdownBarProps) {
  return (
    <div className={styles.row}>
      <Text size="sm">{rating} star</Text>

      <div className={styles.bar}>
        <div
          className={styles.fill}
          style={{
            width: `${Math.min(100, Math.max(0, percentage))}%`,
          }}
        />
      </div>

      <Text size="sm">{percentage}%</Text>
    </div>
  );
}
EOF

cat > RatingBreakdownBar/RatingBreakdownBar.module.css <<'EOF'
.row {
  display: flex;
  align-items: center;
  gap: 8px;
}

.bar {
  width: 180px;
  height: 8px;
  background: #e5e7eb;
  border-radius: 999px;
  overflow: hidden;
}

.fill {
  height: 100%;
  background: #111827;
}
EOF

cat > RatingBreakdownBar/RatingBreakdownBar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import RatingBreakdownBar from "./RatingBreakdownBar";

const meta: Meta<typeof RatingBreakdownBar> = {
  title: "Molecules/RatingBreakdownBar",
  component: RatingBreakdownBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RatingBreakdownBar>;

export const HighRating: Story = {
  args: {
    rating: 5,
    percentage: 72,
  },
};

export const LowRating: Story = {
  args: {
    rating: 2,
    percentage: 8,
  },
};
EOF


# ------------------------------------------------------------
# ReviewSnippet
# ------------------------------------------------------------
mkdir -p ReviewSnippet

cat > ReviewSnippet/ReviewSnippet.tsx <<'EOF'
import RatingStarUnit from "@/components/ui/atoms/RatingStarUnit/RatingStarUnit";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./ReviewSnippet.module.css";

export interface ReviewSnippetProps {
  author: string;
  rating: number;
  title: string;
  content: string;
}

export default function ReviewSnippet({
  author,
  rating,
  title,
  content,
}: ReviewSnippetProps) {
  return (
    <article className={styles.review}>
      <div className={styles.rating}>
        {Array.from({ length: 5 }).map((_, index) => (
          <RatingStarUnit
            key={index}
            filled={index < rating}
          />
        ))}
      </div>

      <strong>{title}</strong>

      <Text>{content}</Text>

      <Text size="sm">Reviewed by {author}</Text>
    </article>
  );
}
EOF

cat > ReviewSnippet/ReviewSnippet.module.css <<'EOF'
.review {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.rating {
  display: flex;
  gap: 2px;
}
EOF

cat > ReviewSnippet/ReviewSnippet.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import ReviewSnippet from "./ReviewSnippet";

const meta: Meta<typeof ReviewSnippet> = {
  title: "Molecules/ReviewSnippet",
  component: ReviewSnippet,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ReviewSnippet>;

export const Default: Story = {
  args: {
    author: "John Doe",
    rating: 5,
    title: "Great product",
    content: "The product works exactly as described.",
  },
};

export const FourStars: Story = {
  args: {
    author: "Jane Doe",
    rating: 4,
    title: "Very good",
    content: "Good quality and fast delivery.",
  },
};
EOF


# ------------------------------------------------------------
# SearchBar
# ------------------------------------------------------------
mkdir -p SearchBar

cat > SearchBar/SearchBar.tsx <<'EOF'
"use client";

import SearchInput from "@/components/ui/atoms/SearchInput/SearchInput";
import styles from "./SearchBar.module.css";

export interface SearchBarProps {
  placeholder?: string;
  onSearch?: (value: string) => void;
}

export default function SearchBar({
  placeholder = "Search...",
  onSearch,
}: SearchBarProps) {
  return (
    <div className={styles.search}>
      <SearchInput placeholder={placeholder} />

      <button
        type="button"
        onClick={() => onSearch?.("")}
      >
        Search
      </button>
    </div>
  );
}
EOF

cat > SearchBar/SearchBar.module.css <<'EOF'
.search {
  display: flex;
  width: 100%;
  gap: 8px;
}

.search > *:first-child {
  flex: 1;
}

.search button {
  padding: 0 20px;
  border: 1px solid #111827;
  background: #111827;
  color: white;
  border-radius: 6px;
  cursor: pointer;
}
EOF

cat > SearchBar/SearchBar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import SearchBar from "./SearchBar";

const meta: Meta<typeof SearchBar> = {
  title: "Molecules/SearchBar",
  component: SearchBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchBar>;

export const Default: Story = {
  args: {
    placeholder: "Search products...",
  },
};
EOF


# ------------------------------------------------------------
# SearchFilterField
# ------------------------------------------------------------
mkdir -p SearchFilterField

cat > SearchFilterField/SearchFilterField.tsx <<'EOF'
import SearchInput from "@/components/ui/atoms/SearchInput/SearchInput";
import Select from "@/components/ui/atoms/Select/Select";
import styles from "./SearchFilterField.module.css";

export interface SearchFilterFieldProps {
  placeholder?: string;
}

export default function SearchFilterField({
  placeholder = "Search...",
}: SearchFilterFieldProps) {
  return (
    <div className={styles.field}>
      <SearchInput placeholder={placeholder} />

      <Select
        options={[
          { label: "All", value: "all" },
          { label: "Products", value: "products" },
          { label: "Categories", value: "categories" },
        ]}
      />
    </div>
  );
}
EOF

cat > SearchFilterField/SearchFilterField.module.css <<'EOF'
.field {
  display: flex;
  align-items: center;
  gap: 8px;
}

.field > *:first-child {
  flex: 1;
}
EOF

cat > SearchFilterField/SearchFilterField.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import SearchFilterField from "./SearchFilterField";

const meta: Meta<typeof SearchFilterField> = {
  title: "Molecules/SearchFilterField",
  component: SearchFilterField,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchFilterField>;

export const Default: Story = {
  args: {
    placeholder: "Search products...",
  },
};
EOF


# ------------------------------------------------------------
# StarRating
# ------------------------------------------------------------
mkdir -p StarRating

cat > StarRating/StarRating.tsx <<'EOF'
import RatingStarUnit from "@/components/ui/atoms/RatingStarUnit/RatingStarUnit";
import styles from "./StarRating.module.css";

export interface StarRatingProps {
  rating: number;
  max?: number;
}

export default function StarRating({
  rating,
  max = 5,
}: StarRatingProps) {
  return (
    <div
      className={styles.rating}
      aria-label={`${rating} out of ${max} stars`}
    >
      {Array.from({ length: max }).map((_, index) => {
        const filled = index + 1 <= rating;
        const half = !filled && index < rating;

        return (
          <RatingStarUnit
            key={index}
            filled={filled}
            half={half}
          />
        );
      })}
    </div>
  );
}
EOF

cat > StarRating/StarRating.module.css <<'EOF'
.rating {
  display: inline-flex;
  align-items: center;
  gap: 2px;
}
EOF

cat > StarRating/StarRating.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import StarRating from "./StarRating";

const meta: Meta<typeof StarRating> = {
  title: "Molecules/StarRating",
  component: StarRating,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StarRating>;

export const Empty: Story = {
  args: {
    rating: 0,
  },
};

export const ThreeStars: Story = {
  args: {
    rating: 3,
  },
};

export const FourAndHalf: Story = {
  args: {
    rating: 4.5,
  },
};

export const FiveStars: Story = {
  args: {
    rating: 5,
  },
};
EOF


# ------------------------------------------------------------
# Tabs
# ------------------------------------------------------------
mkdir -p Tabs

cat > Tabs/Tabs.tsx <<'EOF'
"use client";

import { useState, type ReactNode } from "react";
import styles from "./Tabs.module.css";

export interface TabItem {
  id: string;
  label: string;
  content: ReactNode;
}

export interface TabsProps {
  tabs: TabItem[];
  defaultTab?: string;
}

export default function Tabs({
  tabs,
  defaultTab,
}: TabsProps) {
  const [active, setActive] = useState(
    defaultTab ?? tabs[0]?.id
  );

  const current = tabs.find((tab) => tab.id === active);

  return (
    <div className={styles.tabs}>
      <div className={styles.list} role="tablist">
        {tabs.map((tab) => (
          <button
            key={tab.id}
            type="button"
            role="tab"
            className={active === tab.id ? styles.active : ""}
            onClick={() => setActive(tab.id)}
          >
            {tab.label}
          </button>
        ))}
      </div>

      <div className={styles.content}>
        {current?.content}
      </div>
    </div>
  );
}
EOF

cat > Tabs/Tabs.module.css <<'EOF'
.tabs {
  width: 100%;
}

.list {
  display: flex;
  gap: 4px;
  border-bottom: 1px solid #e5e7eb;
}

.list button {
  padding: 10px 16px;
  border: 0;
  background: transparent;
  cursor: pointer;
}

.active {
  border-bottom: 2px solid #111827 !important;
  font-weight: 600;
}

.content {
  padding: 20px 0;
}
EOF

cat > Tabs/Tabs.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Tabs from "./Tabs";

const meta: Meta<typeof Tabs> = {
  title: "Molecules/Tabs",
  component: Tabs,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Tabs>;

export const Default: Story = {
  args: {
    tabs: [
      {
        id: "description",
        label: "Description",
        content: "Product description goes here.",
      },
      {
        id: "reviews",
        label: "Reviews",
        content: "Customer reviews go here.",
      },
      {
        id: "shipping",
        label: "Shipping",
        content: "Shipping information goes here.",
      },
    ],
  },
};
EOF


# ------------------------------------------------------------
# Toast
# ------------------------------------------------------------
mkdir -p Toast

cat > Toast/Toast.tsx <<'EOF'
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./Toast.module.css";

export type ToastVariant =
  | "info"
  | "success"
  | "warning"
  | "error";

export interface ToastProps {
  message: string;
  variant?: ToastVariant;
  onClose?: () => void;
}

export default function Toast({
  message,
  variant = "info",
  onClose,
}: ToastProps) {
  return (
    <div
      className={`${styles.toast} ${styles[variant]}`}
      role="status"
    >
      <Text>{message}</Text>

      {onClose && (
        <button type="button" onClick={onClose}>
          ×
        </button>
      )}
    </div>
  );
}
EOF

cat > Toast/Toast.module.css <<'EOF'
.toast {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 16px;
  padding: 12px 16px;
  border-radius: 6px;
  box-shadow: 0 4px 12px rgb(0 0 0 / 10%);
}

.info {
  background: #eff6ff;
}

.success {
  background: #ecfdf5;
}

.warning {
  background: #fffbeb;
}

.error {
  background: #fef2f2;
}

.toast button {
  border: 0;
  background: transparent;
  cursor: pointer;
  font-size: 18px;
}
EOF

cat > Toast/Toast.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import Toast from "./Toast";

const meta: Meta<typeof Toast> = {
  title: "Molecules/Toast",
  component: Toast,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Toast>;

export const Info: Story = {
  args: {
    message: "Your changes have been saved.",
    variant: "info",
  },
};

export const Success: Story = {
  args: {
    message: "Item added to cart.",
    variant: "success",
  },
};

export const Error: Story = {
  args: {
    message: "Something went wrong.",
    variant: "error",
  },
};
EOF


# ------------------------------------------------------------
# VariantSelector
# ------------------------------------------------------------
mkdir -p VariantSelector

cat > VariantSelector/VariantSelector.tsx <<'EOF'
"use client";

import { useState } from "react";
import SizeOption from "@/components/ui/atoms/SizeOption/SizeOption";
import styles from "./VariantSelector.module.css";

export interface Variant {
  id: string;
  label: string;
}

export interface VariantSelectorProps {
  variants: Variant[];
  defaultVariant?: string;
  onChange?: (id: string) => void;
}

export default function VariantSelector({
  variants,
  defaultVariant,
  onChange,
}: VariantSelectorProps) {
  const [selected, setSelected] = useState(
    defaultVariant ?? variants[0]?.id
  );

  const handleSelect = (id: string) => {
    setSelected(id);
    onChange?.(id);
  };

  return (
    <div className={styles.selector}>
      {variants.map((variant) => (
        <SizeOption
          key={variant.id}
          size={variant.label}
          selected={selected === variant.id}
          onClick={() => handleSelect(variant.id)}
        />
      ))}
    </div>
  );
}
EOF

cat > VariantSelector/VariantSelector.module.css <<'EOF'
.selector {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}
EOF

cat > VariantSelector/VariantSelector.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react-vite";
import VariantSelector from "./VariantSelector";

const meta: Meta<typeof VariantSelector> = {
  title: "Molecules/VariantSelector",
  component: VariantSelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof VariantSelector>;

export const Sizes: Story = {
  args: {
    variants: [
      { id: "s", label: "S" },
      { id: "m", label: "M" },
      { id: "l", label: "L" },
      { id: "xl", label: "XL" },
    ],
  },
};

export const WithDefault: Story = {
  args: {
    variants: [
      { id: "black", label: "Black" },
      { id: "white", label: "White" },
      { id: "blue", label: "Blue" },
    ],
    defaultVariant: "black",
  },
};
EOF


echo ""
echo "============================================"
echo " Molecules generated successfully!"
echo "============================================"
echo ""
echo "Atom imports use:"
echo "@/components/ui/atoms/[Atom]/[Atom]"
echo ""
echo "Storybook imports use:"
echo "@storybook/react-vite"