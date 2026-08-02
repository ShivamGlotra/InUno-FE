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
