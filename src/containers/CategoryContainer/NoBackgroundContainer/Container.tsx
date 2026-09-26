import CategoryTileGrid from '@/components/ui/organisms/CategoryTileGrid/CategoryTileGrid';
import styles from './Container-NoBG.module.css';

// Container for categories and products with no background
interface ClearBackgroundContainerProps {
  categories: {
    id: string;
    name: string;
    itemCount: string;
    badge: string;
    color: string;
    image?: string;
  }[];
}

const ClearBackgroundContainer = ({ categories }: ClearBackgroundContainerProps) => {
  return (
    <section className={styles.section}>
      <div className={styles.box}>
        <div className={styles.header}>
          <h2 className={styles.title}>{'Shop by category'}</h2>
          <a href={categories[0]?.id} className={styles.viewAll}>
            View all
            {/* <span className={styles.chevron}>&gt;</span> */}
          </a>
        </div>
        <div className={styles.categoryContainer}>
          <CategoryTileGrid categories={categories} />
        </div>
      </div>
    </section>
  );
};

export default ClearBackgroundContainer;
