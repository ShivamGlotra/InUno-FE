import Card from "@/components/ui/molecules/Card/Card";
import Image from "@/components/ui/atoms/Image/Image";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./CategoryTileGrid.module.css";

export interface CategoryTile {
  id: string;
  name: string;
  image: string;
}

export interface CategoryTileGridProps {
  categories: CategoryTile[];
}

export default function CategoryTileGrid({
  categories,
}: CategoryTileGridProps) {
  return (
    <section className={styles.grid}>
      {categories.map((category) => (
        <Card key={category.id}>
          <Image
            src={category.image}
            alt={category.name}
            width={200}
            height={150}
          />
          <Text>{category.name}</Text>
        </Card>
      ))}
    </section>
  );
}
