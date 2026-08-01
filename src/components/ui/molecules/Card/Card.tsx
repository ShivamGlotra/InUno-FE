import { HTMLAttributes, ReactNode } from "react";
import styles from "./Card.module.css";

interface CardProps extends HTMLAttributes<HTMLDivElement> {
  children: ReactNode;
  elevation?: "none" | "sm" | "md" | "lg" | "xl";
  padding?: "none" | "sm" | "md" | "lg" | "xl";
  rounded?: "none" | "sm" | "md" | "lg" | "xl";
  fullWidth?: boolean;
  className?: string;
}

const Card = ({
  children,
  elevation = "md",
  padding = "md",
  rounded = "md",
  fullWidth = false,
  className = "",
  ...props
}: CardProps) => {
  const cClasses = [
    styles.card,
    styles[`shadow-${elevation}`],
    styles[`padding-${padding}`],
    styles[`rounded-${rounded}`],
    fullWidth ? styles.fullWidth : "",
    className,
  ].join(" ");

  return (
    <div className={cClasses} {...props}>
      {children}
    </div>
  );
};

export default Card;
