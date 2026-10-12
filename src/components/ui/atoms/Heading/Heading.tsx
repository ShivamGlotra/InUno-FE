import React from 'react';
import styles from './Heading.module.css';

export type HeadingLevel = 1 | 2 | 3 | 4 | 5 | 6;
export type HeadingFontSize = 'sm' | 'md' | 'lg' | 'xl' | '2xl' | '3xl' | '4xl' | '5xl' | '6xl';
export type HeadingColor =
  'primary' | 'secondary' | 'success' | 'warning' | 'error' | 'neutral' | 'info';
export type HeadingWeight = 'normal' | 'medium' | 'semibold' | 'bold' | 'extrabold';
export type HeadingAlign = 'left' | 'center' | 'right';

export interface HeadingProps extends Omit<React.HTMLAttributes<HTMLHeadingElement>, 'color'> {
  children: React.ReactNode;
  /** Semantic level: renders <h1> to <h6>. Also sets the default visual size. */
  level?: HeadingLevel;
  /** Visual size, independent of the semantic level. */
  fontSize?: HeadingFontSize;
  /** Text colour. Leave unset to use the default text colour. */
  color?: HeadingColor;
  weight?: HeadingWeight;
  align?: HeadingAlign;
  /** Optional second line shown under the heading in a lighter style. */
  subtitle?: React.ReactNode;
  /** Colour for the subtitle. Leave unset for the muted default. */
  subtitleColor?: HeadingColor;
}

/** Visual size used when `fontSize` is not passed. */
const DEFAULT_SIZE_BY_LEVEL: Record<HeadingLevel, HeadingFontSize> = {
  1: '4xl',
  2: '3xl',
  3: '2xl',
  4: 'xl',
  5: 'lg',
  6: 'md',
};

const SIZE_CLASS: Record<HeadingFontSize, string> = {
  sm: styles.sizeSm,
  md: styles.sizeMd,
  lg: styles.sizeLg,
  xl: styles.sizeXl,
  '2xl': styles.size2xl,
  '3xl': styles.size3xl,
  '4xl': styles.size4xl,
  '5xl': styles.size5xl,
  '6xl': styles.size6xl,
};

const COLOR_CLASS: Record<HeadingColor, string> = {
  primary: styles.colorPrimary,
  secondary: styles.colorSecondary,
  success: styles.colorSuccess,
  warning: styles.colorWarning,
  error: styles.colorError,
  neutral: styles.colorNeutral,
  info: styles.colorInfo,
};

const WEIGHT_CLASS: Record<HeadingWeight, string> = {
  normal: styles.weightNormal,
  medium: styles.weightMedium,
  semibold: styles.weightSemibold,
  bold: styles.weightBold,
  extrabold: styles.weightExtrabold,
};

const ALIGN_CLASS: Record<HeadingAlign, string> = {
  left: styles.alignLeft,
  center: styles.alignCenter,
  right: styles.alignRight,
};

const cx = (...parts: Array<string | false | null | undefined>) => parts.filter(Boolean).join(' ');

const Heading = ({
  children,
  level = 2,
  fontSize,
  color,
  weight,
  align,
  subtitle,
  subtitleColor,
  className,
  ...rest
}: HeadingProps) => {
  const Tag = `h${level}` as React.ElementType;

  return (
    <Tag
      {...rest}
      className={cx(
        styles.heading,
        SIZE_CLASS[fontSize ?? DEFAULT_SIZE_BY_LEVEL[level]],
        color && COLOR_CLASS[color],
        weight && WEIGHT_CLASS[weight],
        align && ALIGN_CLASS[align],
        className,
      )}
    >
      {children}
      {subtitle && (
        <span className={cx(styles.subtitle, subtitleColor && COLOR_CLASS[subtitleColor])}>
          {subtitle}
        </span>
      )}
    </Tag>
  );
};

export default Heading;
