import type { SVGProps } from 'react';

type IconProps = SVGProps<SVGSVGElement> & { size?: number };

function Icon({ size = 18, children, ...rest }: IconProps) {
  return (
    <svg
      width={size}
      height={size}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth={1.6}
      strokeLinecap="round"
      strokeLinejoin="round"
      aria-hidden="true"
      {...rest}
    >
      {children}
    </svg>
  );
}

/** Delivery truck */
export const FreeShippingIcon = (props: IconProps) => (
  <Icon {...props}>
    <path d="M3 6.5h11v10H3z" />
    <path d="M14 10h3.8L21 13v3.5h-7" />
    <circle cx="7.5" cy="18" r="1.8" />
    <circle cx="17.5" cy="18" r="1.8" />
  </Icon>
);

/** Headset */
export const Support247Icon = (props: IconProps) => (
  <Icon {...props}>
    <path d="M4 14v-2a8 8 0 0 1 16 0v2" />
    <rect x="3" y="13" width="4" height="6" rx="1.5" />
    <rect x="17" y="13" width="4" height="6" rx="1.5" />
    <path d="M19 19v.5a2.5 2.5 0 0 1-2.5 2.5H13" />
  </Icon>
);

/** Shield with check */
export const SecurePaymentIcon = (props: IconProps) => (
  <Icon {...props}>
    <path d="M12 3l7 3v5.5c0 4.4-2.9 8-7 9.5-4.1-1.5-7-5.1-7-9.5V6l7-3z" />
    <path d="M8.8 12.2l2.3 2.3 4.2-4.5" />
  </Icon>
);

/** Return arrow */
export const EasyReturnIcon = (props: IconProps) => (
  <Icon {...props}>
    <path d="M4 12a8 8 0 1 0 2.8-6.1" />
    <path d="M4 4.5v4h4" />
  </Icon>
);
