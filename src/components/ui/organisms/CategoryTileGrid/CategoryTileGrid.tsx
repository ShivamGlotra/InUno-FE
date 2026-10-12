import Link from 'next/link';
import Heading from '@/components/ui/atoms/Heading/Heading';
import CategoryCard from '@/components/ui/molecules/CategoryCard/CategoryCard';
import styles from './CategoryTileGrid.module.css';

export interface CategoryTile {
  id: string;
  name: string;
  itemCount: string;
  badge?: string;
  /** Soft background tint behind the picture */
  color?: string;
  image: string;
}

export interface CategoryTileGridProps {
  categories: CategoryTile[];
  title?: string;
  viewAllHref?: string;
}

const DEFAULT_TINTS = ['#e9eeff', '#e6f6f3', '#f1ebff'];

const CategoryTileGrid = ({ categories, title, viewAllHref }: CategoryTileGridProps) => {
  return (
    <section className={styles.section} aria-label={title ?? 'Shop by category'}>
      {(title || viewAllHref) && (
        <div className={styles.header}>
          {title && (
            <Heading level={2} fontSize="3xl">
              {title}
            </Heading>
          )}
          {viewAllHref && (
            <Link href={viewAllHref} className={styles.viewAll}>
              View all
            </Link>
          )}
        </div>
      )}

      <div className={styles.grid}>
        {categories.map((category, index) => (
          <CategoryCard
            key={category.id}
            name={category.name}
            itemCount={category.itemCount}
            badge={category.badge}
            href={`/products?category=${encodeURIComponent(category.name)}`}
            tint={category.color ?? DEFAULT_TINTS[index % DEFAULT_TINTS.length]}
            imageSrc={category.image ?? '/images/placeholder.png'}
            imageAlt={`${category.name} products`}
          />
        ))}
      </div>
    </section>
  );
};

export default CategoryTileGrid;
