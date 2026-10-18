import CategoryTileGrid from '@/components/ui/organisms/CategoryTileGrid/CategoryTileGrid';
import styles from './Container-NoBG.module.css';
import { CategoryTile } from '@/components/ui/organisms/CategoryTileGrid/CategoryTileGrid';

// Container for categories and products with no background
interface ClearBackgroundContainerProps {
  categories: CategoryTile[];
  title: string;
}

const ClearBackgroundContainer = ({ categories, title }: ClearBackgroundContainerProps) => {
  return (
    <section className={styles.section}>
      <div className={styles.box}>
        <div className={styles.header}>
          <h2 className={styles.title}>{title}</h2>
          <a href={categories[0]?.id} className={styles.viewAll}>
            View all
            {/* <span className={styles.chevron}>&gt;</span> */}
          </a>
        </div>
        {/* <div className={styles.categoryContainer}> */}
        <CategoryTileGrid categories={categories} />
      </div>
    </section>
  );
};

export default ClearBackgroundContainer;
