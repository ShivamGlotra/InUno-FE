#!/bin/bash

# ============================================================
# ATOMS - COMPLETE IMPLEMENTATION
# Next.js + React + TypeScript + CSS Modules + Storybook
# ============================================================

# ------------------------------------------------------------
# CHIP
# ------------------------------------------------------------

cat > Chip/Chip.tsx <<'EOF'
import React from "react";
import styles from "./Chip.module.css";

export interface ChipProps {
  label: string;
  selected?: boolean;
  disabled?: boolean;
  onClick?: () => void;
}

export default function Chip({
  label,
  selected = false,
  disabled = false,
  onClick,
}: ChipProps) {
  return (
    <button
      type="button"
      className={`${styles.chip} ${selected ? styles.selected : ""}`}
      disabled={disabled}
      onClick={onClick}
    >
      {label}
    </button>
  );
}
EOF

cat > Chip/Chip.module.css <<'EOF'
.chip {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 0.4rem 0.75rem;
  border: 1px solid #d1d5db;
  border-radius: 9999px;
  background: #fff;
  color: #374151;
  font-size: 0.875rem;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.2s ease;
}

.chip:hover:not(:disabled) {
  border-color: #111827;
}

.selected {
  background: #111827;
  color: #fff;
  border-color: #111827;
}

.chip:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}
EOF

cat > Chip/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Chip from "./Chip";

const meta: Meta<typeof Chip> = {
  title: "Atoms/Chip",
  component: Chip,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Chip>;

export const Default: Story = {
  args: {
    label: "Category",
  },
};

export const Selected: Story = {
  args: {
    label: "Selected",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    label: "Disabled",
    disabled: true,
  },
};
EOF


# ------------------------------------------------------------
# COLOR SWATCH
# ------------------------------------------------------------

cat > ColorSwatch/ColorSwatch.tsx <<'EOF'
import React from "react";
import styles from "./ColorSwatch.module.css";

export interface ColorSwatchProps {
  color: string;
  label?: string;
  selected?: boolean;
  disabled?: boolean;
  onClick?: () => void;
}

export default function ColorSwatch({
  color,
  label,
  selected = false,
  disabled = false,
  onClick,
}: ColorSwatchProps) {
  return (
    <button
      type="button"
      className={`${styles.swatch} ${selected ? styles.selected : ""}`}
      style={{ backgroundColor: color }}
      aria-label={label ?? color}
      disabled={disabled}
      onClick={onClick}
    />
  );
}
EOF

cat > ColorSwatch/ColorSwatch.module.css <<'EOF'
.swatch {
  width: 32px;
  height: 32px;
  border: 2px solid #fff;
  border-radius: 50%;
  box-shadow: 0 0 0 1px #d1d5db;
  cursor: pointer;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.swatch:hover:not(:disabled) {
  transform: scale(1.08);
}

.selected {
  box-shadow: 0 0 0 2px #111827;
}

.swatch:disabled {
  opacity: 0.4;
  cursor: not-allowed;
}
EOF

cat > ColorSwatch/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import ColorSwatch from "./ColorSwatch";

const meta: Meta<typeof ColorSwatch> = {
  title: "Atoms/ColorSwatch",
  component: ColorSwatch,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ColorSwatch>;

export const Black: Story = {
  args: {
    color: "#000000",
    label: "Black",
  },
};

export const Red: Story = {
  args: {
    color: "#ef4444",
    label: "Red",
  },
};

export const Selected: Story = {
  args: {
    color: "#2563eb",
    label: "Blue",
    selected: true,
  },
};
EOF


# ------------------------------------------------------------
# CONTAINER
# ------------------------------------------------------------

cat > Container/Container.tsx <<'EOF'
import React from "react";
import styles from "./Container.module.css";

export interface ContainerProps {
  children: React.ReactNode;
  size?: "sm" | "md" | "lg" | "xl" | "full";
  className?: string;
}

export default function Container({
  children,
  size = "lg",
  className = "",
}: ContainerProps) {
  return (
    <div className={`${styles.container} ${styles[size]} ${className}`}>
      {children}
    </div>
  );
}
EOF

cat > Container/Container.module.css <<'EOF'
.container {
  width: 100%;
  margin-inline: auto;
  padding-inline: 1rem;
}

.sm {
  max-width: 640px;
}

.md {
  max-width: 768px;
}

.lg {
  max-width: 1024px;
}

.xl {
  max-width: 1280px;
}

.full {
  max-width: none;
}
EOF

cat > Container/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Container from "./Container";

const meta: Meta<typeof Container> = {
  title: "Atoms/Container",
  component: Container,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Container>;

export const Default: Story = {
  args: {
    children: "Container content",
  },
};
EOF


# ------------------------------------------------------------
# DISCOUNT BADGE
# ------------------------------------------------------------

cat > DiscountBadge/DiscountBadge.tsx <<'EOF'
import React from "react";
import styles from "./DiscountBadge.module.css";

export interface DiscountBadgeProps {
  percentage: number;
}

export default function DiscountBadge({
  percentage,
}: DiscountBadgeProps) {
  return (
    <span className={styles.badge}>
      -{percentage}%
    </span>
  );
}
EOF

cat > DiscountBadge/DiscountBadge.module.css <<'EOF'
.badge {
  display: inline-flex;
  align-items: center;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  background: #dc2626;
  color: #fff;
  font-size: 0.75rem;
  font-weight: 700;
}
EOF

cat > DiscountBadge/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import DiscountBadge from "./DiscountBadge";

const meta: Meta<typeof DiscountBadge> = {
  title: "Atoms/DiscountBadge",
  component: DiscountBadge,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof DiscountBadge>;

export const Default: Story = {
  args: {
    percentage: 20,
  },
};

export const LargeDiscount: Story = {
  args: {
    percentage: 50,
  },
};
EOF


# ------------------------------------------------------------
# DIVIDER
# ------------------------------------------------------------

cat > Divider/Divider.tsx <<'EOF'
import React from "react";
import styles from "./Divider.module.css";

export interface DividerProps {
  orientation?: "horizontal" | "vertical";
}

export default function Divider({
  orientation = "horizontal",
}: DividerProps) {
  return (
    <div
      className={`${styles.divider} ${
        orientation === "vertical" ? styles.vertical : styles.horizontal
      }`}
      role="separator"
      aria-orientation={orientation}
    />
  );
}
EOF

cat > Divider/Divider.module.css <<'EOF'
.divider {
  background: #e5e7eb;
  flex-shrink: 0;
}

.horizontal {
  width: 100%;
  height: 1px;
}

.vertical {
  width: 1px;
  height: 100%;
}
EOF

cat > Divider/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Divider from "./Divider";

const meta: Meta<typeof Divider> = {
  title: "Atoms/Divider",
  component: Divider,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Divider>;

export const Horizontal: Story = {
  args: {
    orientation: "horizontal",
  },
};

export const Vertical: Story = {
  render: () => (
    <div style={{ height: 100 }}>
      <Divider orientation="vertical" />
    </div>
  ),
};
EOF


# ------------------------------------------------------------
# FORM HELPER TEXT
# ------------------------------------------------------------

cat > FormHelperText/FormHelperText.tsx <<'EOF'
import React from "react";
import styles from "./FormHelperText.module.css";

export interface FormHelperTextProps {
  children: React.ReactNode;
  error?: boolean;
}

export default function FormHelperText({
  children,
  error = false,
}: FormHelperTextProps) {
  return (
    <span className={`${styles.helper} ${error ? styles.error : ""}`}>
      {children}
    </span>
  );
}
EOF

cat > FormHelperText/FormHelperText.module.css <<'EOF'
.helper {
  display: block;
  margin-top: 0.25rem;
  color: #6b7280;
  font-size: 0.75rem;
}

.error {
  color: #dc2626;
}
EOF

cat > FormHelperText/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import FormHelperText from "./FormHelperText";

const meta: Meta<typeof FormHelperText> = {
  title: "Atoms/FormHelperText",
  component: FormHelperText,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof FormHelperText>;

export const Default: Story = {
  args: {
    children: "Enter your email address.",
  },
};

export const Error: Story = {
  args: {
    children: "This field is required.",
    error: true,
  },
};
EOF


# ------------------------------------------------------------
# HEADING
# ------------------------------------------------------------

cat > Heading/Heading.tsx <<'EOF'
import React from "react";
import styles from "./Heading.module.css";

export interface HeadingProps {
  children: React.ReactNode;
  level?: 1 | 2 | 3 | 4 | 5 | 6;
}

export default function Heading({
  children,
  level = 2,
}: HeadingProps) {
  const Tag = `h${level}` as keyof React.JSX.IntrinsicElements;

  return <Tag className={`${styles.heading} ${styles[`h${level}`]}`}>{children}</Tag>;
}
EOF

cat > Heading/Heading.module.css <<'EOF'
.heading {
  margin: 0;
  color: #111827;
  font-weight: 700;
}

.h1 {
  font-size: 2.25rem;
}

.h2 {
  font-size: 1.875rem;
}

.h3 {
  font-size: 1.5rem;
}

.h4 {
  font-size: 1.25rem;
}

.h5 {
  font-size: 1.125rem;
}

.h6 {
  font-size: 1rem;
}
EOF

cat > Heading/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Heading from "./Heading";

const meta: Meta<typeof Heading> = {
  title: "Atoms/Heading",
  component: Heading,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Heading>;

export const H1: Story = {
  args: {
    children: "Page Heading",
    level: 1,
  },
};

export const H2: Story = {
  args: {
    children: "Section Heading",
    level: 2,
  },
};

export const H3: Story = {
  args: {
    children: "Subsection Heading",
    level: 3,
  },
};
EOF


# ------------------------------------------------------------
# ICON
# ------------------------------------------------------------

cat > Icon/Icon.tsx <<'EOF'
import React from "react";
import styles from "./Icon.module.css";

export interface IconProps {
  children: React.ReactNode;
  size?: "sm" | "md" | "lg";
  label?: string;
}

export default function Icon({
  children,
  size = "md",
  label,
}: IconProps) {
  return (
    <span
      className={`${styles.icon} ${styles[size]}`}
      aria-label={label}
      role={label ? "img" : undefined}
    >
      {children}
    </span>
  );
}
EOF

cat > Icon/Icon.module.css <<'EOF'
.icon {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  line-height: 1;
}

.sm {
  width: 16px;
  height: 16px;
}

.md {
  width: 24px;
  height: 24px;
}

.lg {
  width: 32px;
  height: 32px;
}
EOF

cat > Icon/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Icon from "./Icon";

const meta: Meta<typeof Icon> = {
  title: "Atoms/Icon",
  component: Icon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Icon>;

export const Default: Story = {
  args: {
    children: "★",
  },
};

export const Large: Story = {
  args: {
    children: "★",
    size: "lg",
  },
};
EOF


# ------------------------------------------------------------
# IMAGE
# ------------------------------------------------------------

cat > Image/Image.tsx <<'EOF'
import React from "react";
import styles from "./Image.module.css";

export interface ImageProps {
  src: string;
  alt: string;
  width?: number;
  height?: number;
  objectFit?: "cover" | "contain" | "fill";
  className?: string;
}

export default function Image({
  src,
  alt,
  width,
  height,
  objectFit = "cover",
  className = "",
}: ImageProps) {
  return (
    <img
      src={src}
      alt={alt}
      width={width}
      height={height}
      className={`${styles.image} ${styles[objectFit]} ${className}`}
    />
  );
}
EOF

cat > Image/Image.module.css <<'EOF'
.image {
  display: block;
  max-width: 100%;
  height: auto;
}

.cover {
  object-fit: cover;
}

.contain {
  object-fit: contain;
}

.fill {
  object-fit: fill;
}
EOF

cat > Image/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Image from "./Image";

const meta: Meta<typeof Image> = {
  title: "Atoms/Image",
  component: Image,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Image>;

export const Default: Story = {
  args: {
    src: "https://placehold.co/400x300",
    alt: "Placeholder image",
    width: 400,
    height: 300,
  },
};
EOF


# ------------------------------------------------------------
# INPUT
# ------------------------------------------------------------

cat > Input/Input.tsx <<'EOF'
import React from "react";
import styles from "./Input.module.css";

export interface InputProps
  extends React.InputHTMLAttributes<HTMLInputElement> {
  error?: boolean;
}

export default function Input({
  error = false,
  className = "",
  ...props
}: InputProps) {
  return (
    <input
      {...props}
      className={`${styles.input} ${error ? styles.error : ""} ${className}`}
    />
  );
}
EOF

cat > Input/Input.module.css <<'EOF'
.input {
  width: 100%;
  padding: 0.625rem 0.75rem;
  border: 1px solid #d1d5db;
  border-radius: 6px;
  background: #fff;
  color: #111827;
  font-size: 0.875rem;
  outline: none;
  transition: border-color 0.2s ease, box-shadow 0.2s ease;
}

.input:focus {
  border-color: #111827;
  box-shadow: 0 0 0 2px rgb(17 24 39 / 10%);
}

.error {
  border-color: #dc2626;
}

.input:disabled {
  background: #f3f4f6;
  cursor: not-allowed;
}
EOF

cat > Input/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Input from "./Input";

const meta: Meta<typeof Input> = {
  title: "Atoms/Input",
  component: Input,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Input>;

export const Default: Story = {
  args: {
    placeholder: "Enter text...",
  },
};

export const Error: Story = {
  args: {
    placeholder: "Invalid input",
    error: true,
  },
};

export const Disabled: Story = {
  args: {
    placeholder: "Disabled",
    disabled: true,
  },
};
EOF


# ------------------------------------------------------------
# KBD
# ------------------------------------------------------------

cat > Kbd/Kbd.tsx <<'EOF'
import React from "react";
import styles from "./Kbd.module.css";

export interface KbdProps {
  children: React.ReactNode;
}

export default function Kbd({ children }: KbdProps) {
  return <kbd className={styles.kbd}>{children}</kbd>;
}
EOF

cat > Kbd/Kbd.module.css <<'EOF'
.kbd {
  display: inline-block;
  padding: 0.15rem 0.4rem;
  border: 1px solid #d1d5db;
  border-bottom-width: 2px;
  border-radius: 4px;
  background: #f9fafb;
  color: #374151;
  font-family: monospace;
  font-size: 0.75rem;
}
EOF

cat > Kbd/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Kbd from "./Kbd";

const meta: Meta<typeof Kbd> = {
  title: "Atoms/Kbd",
  component: Kbd,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Kbd>;

export const Default: Story = {
  args: {
    children: "⌘ K",
  },
};
EOF


# ------------------------------------------------------------
# LABEL
# ------------------------------------------------------------

cat > Label/Label.tsx <<'EOF'
import React from "react";
import styles from "./Label.module.css";

export interface LabelProps {
  children: React.ReactNode;
  htmlFor?: string;
  required?: boolean;
}

export default function Label({
  children,
  htmlFor,
  required = false,
}: LabelProps) {
  return (
    <label htmlFor={htmlFor} className={styles.label}>
      {children}
      {required && <span className={styles.required}> *</span>}
    </label>
  );
}
EOF

cat > Label/Label.module.css <<'EOF'
.label {
  display: block;
  margin-bottom: 0.375rem;
  color: #374151;
  font-size: 0.875rem;
  font-weight: 500;
}

.required {
  color: #dc2626;
}
EOF

cat > Label/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Label from "./Label";

const meta: Meta<typeof Label> = {
  title: "Atoms/Label",
  component: Label,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Label>;

export const Default: Story = {
  args: {
    children: "Email",
  },
};

export const Required: Story = {
  args: {
    children: "Email",
    required: true,
  },
};
EOF


# ------------------------------------------------------------
# LINK
# ------------------------------------------------------------

cat > Link/Link.tsx <<'EOF'
import React from "react";
import styles from "./Link.module.css";

export interface LinkProps
  extends React.AnchorHTMLAttributes<HTMLAnchorElement> {
  children: React.ReactNode;
}

export default function Link({
  children,
  className = "",
  ...props
}: LinkProps) {
  return (
    <a {...props} className={`${styles.link} ${className}`}>
      {children}
    </a>
  );
}
EOF

cat > Link/Link.module.css <<'EOF'
.link {
  color: #2563eb;
  text-decoration: none;
  cursor: pointer;
}

.link:hover {
  text-decoration: underline;
}
EOF

cat > Link/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Link from "./Link";

const meta: Meta<typeof Link> = {
  title: "Atoms/Link",
  component: Link,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Link>;

export const Default: Story = {
  args: {
    children: "Learn more",
    href: "#",
  },
};
EOF


# ------------------------------------------------------------
# LOGO
# ------------------------------------------------------------

cat > Logo/Logo.tsx <<'EOF'
import React from "react";
import styles from "./Logo.module.css";

export interface LogoProps {
  text?: string;
  src?: string;
  alt?: string;
}

export default function Logo({
  text = "Logo",
  src,
  alt = "Logo",
}: LogoProps) {
  if (src) {
    return <img src={src} alt={alt} className={styles.image} />;
  }

  return <span className={styles.logo}>{text}</span>;
}
EOF

cat > Logo/Logo.module.css <<'EOF'
.logo {
  display: inline-flex;
  align-items: center;
  color: #111827;
  font-size: 1.5rem;
  font-weight: 800;
}

.image {
  display: block;
  max-height: 40px;
  width: auto;
}
EOF

cat > Logo/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Logo from "./Logo";

const meta: Meta<typeof Logo> = {
  title: "Atoms/Logo",
  component: Logo,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Logo>;

export const Default: Story = {
  args: {
    text: "Store",
  },
};
EOF


# ------------------------------------------------------------
# PRICE
# ------------------------------------------------------------

cat > Price/Price.tsx <<'EOF'
import React from "react";
import styles from "./Price.module.css";

export interface PriceProps {
  amount: number;
  currency?: string;
  locale?: string;
}

export default function Price({
  amount,
  currency = "USD",
  locale = "en-US",
}: PriceProps) {
  const formatted = new Intl.NumberFormat(locale, {
    style: "currency",
    currency,
  }).format(amount);

  return <span className={styles.price}>{formatted}</span>;
}
EOF

cat > Price/Price.module.css <<'EOF'
.price {
  color: #111827;
  font-size: 1rem;
  font-weight: 700;
}
EOF

cat > Price/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Price from "./Price";

const meta: Meta<typeof Price> = {
  title: "Atoms/Price",
  component: Price,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Price>;

export const Default: Story = {
  args: {
    amount: 49.99,
  },
};

export const CanadianDollar: Story = {
  args: {
    amount: 49.99,
    currency: "CAD",
    locale: "en-CA",
  },
};
EOF


# ------------------------------------------------------------
# PROGRESS BAR
# ------------------------------------------------------------

cat > ProgressBar/ProgressBar.tsx <<'EOF'
import React from "react";
import styles from "./ProgressBar.module.css";

export interface ProgressBarProps {
  value: number;
  max?: number;
}

export default function ProgressBar({
  value,
  max = 100,
}: ProgressBarProps) {
  const percentage = Math.min(Math.max((value / max) * 100, 0), 100);

  return (
    <div
      className={styles.track}
      role="progressbar"
      aria-valuenow={value}
      aria-valuemin={0}
      aria-valuemax={max}
    >
      <div
        className={styles.progress}
        style={{ width: `${percentage}%` }}
      />
    </div>
  );
}
EOF

cat > ProgressBar/ProgressBar.module.css <<'EOF'
.track {
  width: 100%;
  height: 8px;
  overflow: hidden;
  border-radius: 9999px;
  background: #e5e7eb;
}

.progress {
  height: 100%;
  border-radius: inherit;
  background: #111827;
  transition: width 0.2s ease;
}
EOF

cat > ProgressBar/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import ProgressBar from "./ProgressBar";

const meta: Meta<typeof ProgressBar> = {
  title: "Atoms/ProgressBar",
  component: ProgressBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProgressBar>;

export const Half: Story = {
  args: {
    value: 50,
  },
};

export const Complete: Story = {
  args: {
    value: 100,
  },
};
EOF


# ------------------------------------------------------------
# QUANTITY STEPPER BUTTON
# ------------------------------------------------------------

cat > QuantityStepperButton/QuantityStepperButton.tsx <<'EOF'
import React from "react";
import styles from "./QuantityStepperButton.module.css";

export interface QuantityStepperButtonProps {
  action: "increase" | "decrease";
  onClick?: () => void;
  disabled?: boolean;
}

export default function QuantityStepperButton({
  action,
  onClick,
  disabled = false,
}: QuantityStepperButtonProps) {
  return (
    <button
      type="button"
      className={styles.button}
      onClick={onClick}
      disabled={disabled}
      aria-label={action === "increase" ? "Increase quantity" : "Decrease quantity"}
    >
      {action === "increase" ? "+" : "−"}
    </button>
  );
}
EOF

cat > QuantityStepperButton/QuantityStepperButton.module.css <<'EOF'
.button {
  width: 32px;
  height: 32px;
  border: 1px solid #d1d5db;
  border-radius: 4px;
  background: #fff;
  color: #111827;
  font-size: 1.125rem;
  cursor: pointer;
}

.button:hover:not(:disabled) {
  background: #f3f4f6;
}

.button:disabled {
  opacity: 0.4;
  cursor: not-allowed;
}
EOF

cat > QuantityStepperButton/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import QuantityStepperButton from "./QuantityStepperButton";

const meta: Meta<typeof QuantityStepperButton> = {
  title: "Atoms/QuantityStepperButton",
  component: QuantityStepperButton,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof QuantityStepperButton>;

export const Increase: Story = {
  args: {
    action: "increase",
  },
};

export const Decrease: Story = {
  args: {
    action: "decrease",
  },
};
EOF


# ------------------------------------------------------------
# RADIO
# ------------------------------------------------------------

cat > Radio/Radio.tsx <<'EOF'
import React from "react";
import styles from "./Radio.module.css";

export interface RadioProps
  extends React.InputHTMLAttributes<HTMLInputElement> {}

export default function Radio({
  className = "",
  ...props
}: RadioProps) {
  return (
    <input
      {...props}
      type="radio"
      className={`${styles.radio} ${className}`}
    />
  );
}
EOF

cat > Radio/Radio.module.css <<'EOF'
.radio {
  width: 18px;
  height: 18px;
  margin: 0;
  accent-color: #111827;
  cursor: pointer;
}

.radio:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}
EOF

cat > Radio/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Radio from "./Radio";

const meta: Meta<typeof Radio> = {
  title: "Atoms/Radio",
  component: Radio,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Radio>;

export const Default: Story = {
  args: {
    name: "example",
  },
};

export const Selected: Story = {
  args: {
    name: "example",
    defaultChecked: true,
  },
};
EOF


# ------------------------------------------------------------
# RATING STAR UNIT
# ------------------------------------------------------------

cat > RatingStarUnit/RatingStarUnit.tsx <<'EOF'
import React from "react";
import styles from "./RatingStarUnit.module.css";

export interface RatingStarUnitProps {
  filled?: boolean;
  half?: boolean;
  size?: "sm" | "md" | "lg";
}

export default function RatingStarUnit({
  filled = false,
  half = false,
  size = "md",
}: RatingStarUnitProps) {
  return (
    <span
      className={`${styles.star} ${styles[size]} ${
        filled ? styles.filled : ""
      } ${half ? styles.half : ""}`}
      aria-hidden="true"
    >
      ★
    </span>
  );
}
EOF

cat > RatingStarUnit/RatingStarUnit.module.css <<'EOF'
.star {
  display: inline-block;
  color: #d1d5db;
  line-height: 1;
}

.filled {
  color: #f59e0b;
}

.half {
  color: #f59e0b;
  opacity: 0.5;
}

.sm {
  font-size: 14px;
}

.md {
  font-size: 20px;
}

.lg {
  font-size: 28px;
}
EOF

cat > RatingStarUnit/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import RatingStarUnit from "./RatingStarUnit";

const meta: Meta<typeof RatingStarUnit> = {
  title: "Atoms/RatingStarUnit",
  component: RatingStarUnit,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RatingStarUnit>;

export const Empty: Story = {};

export const Filled: Story = {
  args: {
    filled: true,
  },
};

export const Half: Story = {
  args: {
    half: true,
  },
};
EOF


# ------------------------------------------------------------
# RICH TEXT
# ------------------------------------------------------------

cat > RichText/RichText.tsx <<'EOF'
import React from "react";
import styles from "./RichText.module.css";

export interface RichTextProps {
  children: React.ReactNode;
}

export default function RichText({ children }: RichTextProps) {
  return <div className={styles.richText}>{children}</div>;
}
EOF

cat > RichText/RichText.module.css <<'EOF'
.richText {
  color: #374151;
  font-size: 1rem;
  line-height: 1.6;
}

.richText p {
  margin: 0 0 1rem;
}

.richText h1,
.richText h2,
.richText h3 {
  color: #111827;
}

.richText ul,
.richText ol {
  padding-left: 1.5rem;
}
EOF

cat > RichText/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import RichText from "./RichText";

const meta: Meta<typeof RichText> = {
  title: "Atoms/RichText",
  component: RichText,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RichText>;

export const Default: Story = {
  args: {
    children: (
      <>
        <p>This is a rich text paragraph.</p>
        <strong>Bold content</strong>
      </>
    ),
  },
};
EOF


# ------------------------------------------------------------
# SEARCH INPUT
# ------------------------------------------------------------

cat > SearchInput/SearchInput.tsx <<'EOF'
import React from "react";
import styles from "./SearchInput.module.css";

export interface SearchInputProps
  extends React.InputHTMLAttributes<HTMLInputElement> {
  onSearch?: () => void;
}

export default function SearchInput({
  onSearch,
  className = "",
  ...props
}: SearchInputProps) {
  return (
    <div className={`${styles.wrapper} ${className}`}>
      <span className={styles.icon}>⌕</span>

      <input
        {...props}
        type="search"
        className={styles.input}
      />

      {onSearch && (
        <button
          type="button"
          className={styles.button}
          onClick={onSearch}
        >
          Search
        </button>
      )}
    </div>
  );
}
EOF

cat > SearchInput/SearchInput.module.css <<'EOF'
.wrapper {
  display: flex;
  align-items: center;
  width: 100%;
  border: 1px solid #d1d5db;
  border-radius: 6px;
  background: #fff;
  overflow: hidden;
}

.icon {
  padding-left: 0.75rem;
  color: #6b7280;
}

.input {
  flex: 1;
  min-width: 0;
  padding: 0.625rem 0.5rem;
  border: 0;
  outline: 0;
  background: transparent;
}

.button {
  align-self: stretch;
  padding: 0 1rem;
  border: 0;
  background: #111827;
  color: #fff;
  cursor: pointer;
}
EOF

cat > SearchInput/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import SearchInput from "./SearchInput";

const meta: Meta<typeof SearchInput> = {
  title: "Atoms/SearchInput",
  component: SearchInput,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchInput>;

export const Default: Story = {
  args: {
    placeholder: "Search products...",
  },
};

export const WithButton: Story = {
  args: {
    placeholder: "Search products...",
    onSearch: () => alert("Search"),
  },
};
EOF


# ------------------------------------------------------------
# SELECT
# ------------------------------------------------------------

cat > Select/Select.tsx <<'EOF'
import React from "react";
import styles from "./Select.module.css";

export interface SelectOption {
  label: string;
  value: string;
}

export interface SelectProps
  extends React.SelectHTMLAttributes<HTMLSelectElement> {
  options: SelectOption[];
}

export default function Select({
  options,
  className = "",
  ...props
}: SelectProps) {
  return (
    <select
      {...props}
      className={`${styles.select} ${className}`}
    >
      {options.map((option) => (
        <option key={option.value} value={option.value}>
          {option.label}
        </option>
      ))}
    </select>
  );
}
EOF

cat > Select/Select.module.css <<'EOF'
.select {
  width: 100%;
  padding: 0.625rem 0.75rem;
  border: 1px solid #d1d5db;
  border-radius: 6px;
  background: #fff;
  color: #111827;
  font-size: 0.875rem;
  cursor: pointer;
  outline: none;
}

.select:focus {
  border-color: #111827;
}
EOF

cat > Select/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Select from "./Select";

const meta: Meta<typeof Select> = {
  title: "Atoms/Select",
  component: Select,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Select>;

export const Default: Story = {
  args: {
    options: [
      { label: "Select an option", value: "" },
      { label: "Option One", value: "one" },
      { label: "Option Two", value: "two" },
    ],
  },
};
EOF


# ------------------------------------------------------------
# SHIPPING BADGE
# ------------------------------------------------------------

cat > ShippingBadge/ShippingBadge.tsx <<'EOF'
import React from "react";
import styles from "./ShippingBadge.module.css";

export interface ShippingBadgeProps {
  children?: React.ReactNode;
  free?: boolean;
}

export default function ShippingBadge({
  children,
  free = false,
}: ShippingBadgeProps) {
  return (
    <span className={styles.badge}>
      {children ?? (free ? "Free Shipping" : "Shipping")}
    </span>
  );
}
EOF

cat > ShippingBadge/ShippingBadge.module.css <<'EOF'
.badge {
  display: inline-flex;
  align-items: center;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  background: #ecfdf5;
  color: #047857;
  font-size: 0.75rem;
  font-weight: 600;
}
EOF

cat > ShippingBadge/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import ShippingBadge from "./ShippingBadge";

const meta: Meta<typeof ShippingBadge> = {
  title: "Atoms/ShippingBadge",
  component: ShippingBadge,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ShippingBadge>;

export const FreeShipping: Story = {
  args: {
    free: true,
  },
};
EOF


# ------------------------------------------------------------
# SIZE OPTION
# ------------------------------------------------------------

cat > SizeOption/SizeOption.tsx <<'EOF'
import React from "react";
import styles from "./SizeOption.module.css";

export interface SizeOptionProps {
  size: string;
  selected?: boolean;
  disabled?: boolean;
  onClick?: () => void;
}

export default function SizeOption({
  size,
  selected = false,
  disabled = false,
  onClick,
}: SizeOptionProps) {
  return (
    <button
      type="button"
      className={`${styles.option} ${selected ? styles.selected : ""}`}
      disabled={disabled}
      onClick={onClick}
    >
      {size}
    </button>
  );
}
EOF

cat > SizeOption/SizeOption.module.css <<'EOF'
.option {
  min-width: 42px;
  padding: 0.5rem 0.75rem;
  border: 1px solid #d1d5db;
  border-radius: 4px;
  background: #fff;
  color: #374151;
  cursor: pointer;
}

.option:hover:not(:disabled) {
  border-color: #111827;
}

.selected {
  border-color: #111827;
  background: #111827;
  color: #fff;
}

.option:disabled {
  opacity: 0.4;
  cursor: not-allowed;
}
EOF

cat > SizeOption/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import SizeOption from "./SizeOption";

const meta: Meta<typeof SizeOption> = {
  title: "Atoms/SizeOption",
  component: SizeOption,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SizeOption>;

export const Default: Story = {
  args: {
    size: "M",
  },
};

export const Selected: Story = {
  args: {
    size: "M",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    size: "XL",
    disabled: true,
  },
};
EOF


# ------------------------------------------------------------
# SKELETON
# ------------------------------------------------------------

cat > Skeleton/Skeleton.tsx <<'EOF'
import React from "react";
import styles from "./Skeleton.module.css";

export interface SkeletonProps {
  width?: string | number;
  height?: string | number;
  borderRadius?: string | number;
}

export default function Skeleton({
  width = "100%",
  height = 20,
  borderRadius = 4,
}: SkeletonProps) {
  return (
    <div
      className={styles.skeleton}
      style={{
        width,
        height,
        borderRadius,
      }}
      aria-hidden="true"
    />
  );
}
EOF

cat > Skeleton/Skeleton.module.css <<'EOF'
.skeleton {
  background: #e5e7eb;
  animation: pulse 1.5s ease-in-out infinite;
}

@keyframes pulse {
  0%,
  100% {
    opacity: 1;
  }

  50% {
    opacity: 0.5;
  }
}
EOF

cat > Skeleton/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Skeleton from "./Skeleton";

const meta: Meta<typeof Skeleton> = {
  title: "Atoms/Skeleton",
  component: Skeleton,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Skeleton>;

export const Text: Story = {
  args: {
    width: "300px",
    height: "16px",
  },
};

export const Image: Story = {
  args: {
    width: "300px",
    height: "200px",
  },
};
EOF


# ------------------------------------------------------------
# SPINNER
# ------------------------------------------------------------

cat > Spinner/Spinner.tsx <<'EOF'
import React from "react";
import styles from "./Spinner.module.css";

export interface SpinnerProps {
  size?: "sm" | "md" | "lg";
}

export default function Spinner({
  size = "md",
}: SpinnerProps) {
  return (
    <span
      className={`${styles.spinner} ${styles[size]}`}
      role="status"
      aria-label="Loading"
    />
  );
}
EOF

cat > Spinner/Spinner.module.css <<'EOF'
.spinner {
  display: inline-block;
  border: 3px solid #e5e7eb;
  border-top-color: #111827;
  border-radius: 50%;
  animation: spin 0.7s linear infinite;
}

.sm {
  width: 16px;
  height: 16px;
}

.md {
  width: 24px;
  height: 24px;
}

.lg {
  width: 36px;
  height: 36px;
}

@keyframes spin {
  to {
    transform: rotate(360deg);
  }
}
EOF

cat > Spinner/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Spinner from "./Spinner";

const meta: Meta<typeof Spinner> = {
  title: "Atoms/Spinner",
  component: Spinner,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Spinner>;

export const Small: Story = {
  args: {
    size: "sm",
  },
};

export const Medium: Story = {
  args: {
    size: "md",
  },
};

export const Large: Story = {
  args: {
    size: "lg",
  },
};
EOF


# ------------------------------------------------------------
# STAR ICON
# ------------------------------------------------------------

cat > StarIcon/StarIcon.tsx <<'EOF'
import React from "react";
import styles from "./StarIcon.module.css";

export interface StarIconProps {
  filled?: boolean;
  size?: number;
}

export default function StarIcon({
  filled = false,
  size = 20,
}: StarIconProps) {
  return (
    <span
      className={`${styles.star} ${filled ? styles.filled : ""}`}
      style={{ fontSize: size }}
      aria-hidden="true"
    >
      ★
    </span>
  );
}
EOF

cat > StarIcon/StarIcon.module.css <<'EOF'
.star {
  display: inline-block;
  color: #d1d5db;
  line-height: 1;
}

.filled {
  color: #f59e0b;
}
EOF

cat > StarIcon/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import StarIcon from "./StarIcon";

const meta: Meta<typeof StarIcon> = {
  title: "Atoms/StarIcon",
  component: StarIcon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StarIcon>;

export const Empty: Story = {};

export const Filled: Story = {
  args: {
    filled: true,
  },
};
EOF


# ------------------------------------------------------------
# STOCK DOT
# ------------------------------------------------------------

cat > StockDot/StockDot.tsx <<'EOF'
import React from "react";
import styles from "./StockDot.module.css";

export interface StockDotProps {
  status: "in-stock" | "low-stock" | "out-of-stock";
}

export default function StockDot({ status }: StockDotProps) {
  return (
    <span
      className={`${styles.dot} ${styles[status]}`}
      aria-label={status}
    />
  );
}
EOF

cat > StockDot/StockDot.module.css <<'EOF'
.dot {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 50%;
}

.in-stock {
  background: #16a34a;
}

.low-stock {
  background: #f59e0b;
}

.out-of-stock {
  background: #dc2626;
}
EOF

cat > StockDot/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import StockDot from "./StockDot";

const meta: Meta<typeof StockDot> = {
  title: "Atoms/StockDot",
  component: StockDot,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StockDot>;

export const InStock: Story = {
  args: {
    status: "in-stock",
  },
};

export const LowStock: Story = {
  args: {
    status: "low-stock",
  },
};

export const OutOfStock: Story = {
  args: {
    status: "out-of-stock",
  },
};
EOF


# ------------------------------------------------------------
# STRIKETHROUGH PRICE
# ------------------------------------------------------------

cat > StrikethroughPrice/StrikethroughPrice.tsx <<'EOF'
import React from "react";
import styles from "./StrikethroughPrice.module.css";

export interface StrikethroughPriceProps {
  amount: number;
  currency?: string;
}

export default function StrikethroughPrice({
  amount,
  currency = "USD",
}: StrikethroughPriceProps) {
  const formatted = new Intl.NumberFormat("en-US", {
    style: "currency",
    currency,
  }).format(amount);

  return <span className={styles.price}>{formatted}</span>;
}
EOF

cat > StrikethroughPrice/StrikethroughPrice.module.css <<'EOF'
.price {
  color: #6b7280;
  font-size: 0.875rem;
  text-decoration: line-through;
}
EOF

cat > StrikethroughPrice/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import StrikethroughPrice from "./StrikethroughPrice";

const meta: Meta<typeof StrikethroughPrice> = {
  title: "Atoms/StrikethroughPrice",
  component: StrikethroughPrice,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StrikethroughPrice>;

export const Default: Story = {
  args: {
    amount: 99.99,
  },
};
EOF


# ------------------------------------------------------------
# SWITCH
# ------------------------------------------------------------

cat > Switch/Switch.tsx <<'EOF'
import React from "react";
import styles from "./Switch.module.css";

export interface SwitchProps
  extends Omit<React.InputHTMLAttributes<HTMLInputElement>, "type"> {}

export default function Switch({
  className = "",
  ...props
}: SwitchProps) {
  return (
    <label className={`${styles.wrapper} ${className}`}>
      <input
        {...props}
        type="checkbox"
        className={styles.input}
      />
      <span className={styles.track}>
        <span className={styles.thumb} />
      </span>
    </label>
  );
}
EOF

cat > Switch/Switch.module.css <<'EOF'
.wrapper {
  display: inline-flex;
  cursor: pointer;
}

.input {
  position: absolute;
  opacity: 0;
  pointer-events: none;
}

.track {
  display: flex;
  align-items: center;
  width: 42px;
  height: 24px;
  padding: 3px;
  border-radius: 9999px;
  background: #d1d5db;
  transition: background 0.2s ease;
}

.thumb {
  width: 18px;
  height: 18px;
  border-radius: 50%;
  background: #fff;
  transition: transform 0.2s ease;
}

.input:checked + .track {
  background: #111827;
}

.input:checked + .track .thumb {
  transform: translateX(18px);
}

.input:disabled + .track {
  opacity: 0.5;
  cursor: not-allowed;
}
EOF

cat > Switch/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Switch from "./Switch";

const meta: Meta<typeof Switch> = {
  title: "Atoms/Switch",
  component: Switch,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Switch>;

export const Off: Story = {};

export const On: Story = {
  args: {
    defaultChecked: true,
  },
};

export const Disabled: Story = {
  args: {
    disabled: true,
  },
};
EOF


# ------------------------------------------------------------
# TEXT
# ------------------------------------------------------------

cat > Text/Text.tsx <<'EOF'
import React from "react";
import styles from "./Text.module.css";

export interface TextProps {
  children: React.ReactNode;
  size?: "xs" | "sm" | "md" | "lg" | "xl";
  weight?: "normal" | "medium" | "semibold" | "bold";
  muted?: boolean;
}

export default function Text({
  children,
  size = "md",
  weight = "normal",
  muted = false,
}: TextProps) {
  return (
    <span
      className={`${styles.text} ${styles[size]} ${styles[weight]} ${
        muted ? styles.muted : ""
      }`}
    >
      {children}
    </span>
  );
}
EOF

cat > Text/Text.module.css <<'EOF'
.text {
  color: #111827;
}

.xs {
  font-size: 0.75rem;
}

.sm {
  font-size: 0.875rem;
}

.md {
  font-size: 1rem;
}

.lg {
  font-size: 1.125rem;
}

.xl {
  font-size: 1.25rem;
}

.normal {
  font-weight: 400;
}

.medium {
  font-weight: 500;
}

.semibold {
  font-weight: 600;
}

.bold {
  font-weight: 700;
}

.muted {
  color: #6b7280;
}
EOF

cat > Text/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Text from "./Text";

const meta: Meta<typeof Text> = {
  title: "Atoms/Text",
  component: Text,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Text>;

export const Default: Story = {
  args: {
    children: "Body text",
  },
};

export const Large: Story = {
  args: {
    children: "Large text",
    size: "lg",
  },
};

export const Bold: Story = {
  args: {
    children: "Bold text",
    weight: "bold",
  },
};

export const Muted: Story = {
  args: {
    children: "Muted text",
    muted: true,
  },
};
EOF


# ------------------------------------------------------------
# TEXT AREA
# ------------------------------------------------------------

cat > TextArea/TextArea.tsx <<'EOF'
import React from "react";
import styles from "./TextArea.module.css";

export interface TextAreaProps
  extends React.TextareaHTMLAttributes<HTMLTextAreaElement> {
  error?: boolean;
}

export default function TextArea({
  error = false,
  className = "",
  ...props
}: TextAreaProps) {
  return (
    <textarea
      {...props}
      className={`${styles.textarea} ${error ? styles.error : ""} ${className}`}
    />
  );
}
EOF

cat > TextArea/TextArea.module.css <<'EOF'
.textarea {
  width: 100%;
  min-height: 100px;
  padding: 0.625rem 0.75rem;
  border: 1px solid #d1d5db;
  border-radius: 6px;
  background: #fff;
  color: #111827;
  font: inherit;
  resize: vertical;
  outline: none;
}

.textarea:focus {
  border-color: #111827;
}

.error {
  border-color: #dc2626;
}

.textarea:disabled {
  background: #f3f4f6;
  cursor: not-allowed;
}
EOF

cat > TextArea/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import TextArea from "./TextArea";

const meta: Meta<typeof TextArea> = {
  title: "Atoms/TextArea",
  component: TextArea,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof TextArea>;

export const Default: Story = {
  args: {
    placeholder: "Write something...",
  },
};

export const Error: Story = {
  args: {
    placeholder: "Invalid content",
    error: true,
  },
};
EOF


# ------------------------------------------------------------
# TOOLTIP
# ------------------------------------------------------------

cat > Tooltip/Tooltip.tsx <<'EOF'
import React from "react";
import styles from "./Tooltip.module.css";

export interface TooltipProps {
  content: React.ReactNode;
  children: React.ReactNode;
}

export default function Tooltip({
  content,
  children,
}: TooltipProps) {
  return (
    <span className={styles.wrapper}>
      {children}
      <span className={styles.tooltip} role="tooltip">
        {content}
      </span>
    </span>
  );
}
EOF

cat > Tooltip/Tooltip.module.css <<'EOF'
.wrapper {
  position: relative;
  display: inline-flex;
}

.tooltip {
  position: absolute;
  bottom: calc(100% + 8px);
  left: 50%;
  z-index: 10;
  padding: 0.4rem 0.6rem;
  border-radius: 4px;
  background: #111827;
  color: #fff;
  font-size: 0.75rem;
  white-space: nowrap;
  opacity: 0;
  pointer-events: none;
  transform: translateX(-50%);
  transition: opacity 0.2s ease;
}

.wrapper:hover .tooltip,
.wrapper:focus-within .tooltip {
  opacity: 1;
}
EOF

cat > Tooltip/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Tooltip from "./Tooltip";

const meta: Meta<typeof Tooltip> = {
  title: "Atoms/Tooltip",
  component: Tooltip,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Tooltip>;

export const Default: Story = {
  args: {
    content: "This is a tooltip",
    children: <button type="button">Hover me</button>,
  },
};
EOF


# ------------------------------------------------------------
# WISHLIST ICON
# ------------------------------------------------------------

cat > WishlistIcon/WishlistIcon.tsx <<'EOF'
import React from "react";
import styles from "./WishlistIcon.module.css";

export interface WishlistIconProps {
  active?: boolean;
  size?: number;
  onClick?: () => void;
}

export default function WishlistIcon({
  active = false,
  size = 24,
  onClick,
}: WishlistIconProps) {
  return (
    <button
      type="button"
      className={styles.button}
      onClick={onClick}
      aria-label={active ? "Remove from wishlist" : "Add to wishlist"}
    >
      <span
        className={`${styles.heart} ${active ? styles.active : ""}`}
        style={{ fontSize: size }}
      >
        {active ? "♥" : "♡"}
      </span>
    </button>
  );
}
EOF

cat > WishlistIcon/WishlistIcon.module.css <<'EOF'
.button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 0;
  border: 0;
  background: transparent;
  cursor: pointer;
}

.heart {
  color: #374151;
  line-height: 1;
  transition: transform 0.2s ease, color 0.2s ease;
}

.button:hover .heart {
  transform: scale(1.1);
}

.active {
  color: #dc2626;
}
EOF

cat > WishlistIcon/stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import WishlistIcon from "./WishlistIcon";

const meta: Meta<typeof WishlistIcon> = {
  title: "Atoms/WishlistIcon",
  component: WishlistIcon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof WishlistIcon>;

export const Default: Story = {};

export const Active: Story = {
  args: {
    active: true,
  },
};

export const Large: Story = {
  args: {
    size: 32,
  },
};
EOF


echo ""
echo "=============================================="
echo " All atom implementations have been created!"
echo "=============================================="