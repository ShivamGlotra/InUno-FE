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
