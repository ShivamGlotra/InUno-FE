import CategoryTileGrid from '@/components/ui/organisms/CategoryTileGrid/CategoryTileGrid';
import styles from './Container-whiteBG.module.css';

interface WhiteBackgroundContainerProps {
  categories: {
    id: string;
    name: string;
    itemCount: string;
    badge: string;
    color: string;
    image?: string;
  }[];
}

const WhiteBackgroundContainer = ({ categories }: WhiteBackgroundContainerProps) => {
  return (
    <section className={styles.section}>
      <div className={styles.box}>
        <div className={styles.header}>
          <h2 className={styles.title}>{'Products On Sale'}</h2>
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

export default WhiteBackgroundContainer;
