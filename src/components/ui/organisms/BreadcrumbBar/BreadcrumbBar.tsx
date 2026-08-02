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
