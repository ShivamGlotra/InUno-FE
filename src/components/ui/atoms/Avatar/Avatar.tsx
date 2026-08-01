import Image from "next/image";
import clsx from "clsx";
import styles from "./Avatar.module.css";

interface AvatarProps {
  /** The URL of the avatar image */
  src?: string;
  /** The alt text for the avatar image */
  alt?: string;
  /** The size of the avatar */
  /** Initials to display if no image is provided */
  initials?: string;
  size?: "xs" | "sm" | "md" | "lg" | "xl";
  /** The shape of the avatar */
  shape?: "circle" | "square";
  /** Additional CSS classes to apply to the avatar */
  className?: string;
}

export default function Avatar({
  src,
  alt = "Avatar",
  initials,
  size = "md",
  shape = "circle",
  className,
}: AvatarProps) {
  const avatarClassNames = clsx(
    styles.avatar,
    styles[size],
    styles[shape],
    className,
  );

  return (
    <div className={avatarClassNames}>
      {src ? (
        <Image
          src={src}
          alt={alt}
          width={100}
          height={100}
          className={styles.image}
        />
      ) : (
        <span className={styles.initials}>
          {initials?.slice(0, 2).toUpperCase()}
        </span>
      )}
    </div>
  );
}
