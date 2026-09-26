import styles from './CategoryTileGrid.module.css';

export interface CategoryTile {
  id: string;
  name: string;
  itemCount: string;
  badge: string;
  color: string;
  image?: string;
}

export interface CategoryTileGridProps {
  title?: string;
  viewAllHref?: string;
  categories: CategoryTile[];
}

const CategoryTileGrid = ({ categories }: CategoryTileGridProps) => {
  return (
    <section className={styles.section}>
      <div className={styles.grid}>
        {categories.map((category) => (
          <a key={category.id} href="#" className={styles.tile}>
            <div className={styles.imageArea}>
              <span className={styles.badge}>{category.badge}</span>
              <div className={styles.iconWrap} style={{ backgroundColor: `${category.color}33` }}>
                <div
                  className={styles.iconDot}
                  style={{ backgroundColor: `${category.color}99` }}
                />
              </div>
            </div>
            <div className={styles.info}>
              <p className={styles.name}>{category.name}</p>
              <p className={styles.count}>{category.itemCount} items</p>
            </div>
          </a>
        ))}
      </div>
    </section>
  );
};

export default CategoryTileGrid;
