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
