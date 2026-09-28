import ProductThumbnail from '@/components/ui/molecules/ProductThumbnail/ProductThumbnail';
import PriceBlock from '@/components/ui/molecules/PriceBlock/PriceBlock';
import StarRating from '@/components/ui/molecules/StarRating/StarRating';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './ProductCard.module.css';
import Button from '../../atoms/Button';
import { HeartIcon, StarIcon, CartIcon } from '@/app/icons/product-card-icon';
import Image from '@/components/ui/atoms/Image/Image';
import { Product } from '@/types/productType';

type ProductCardProps = {
  product: Product;
};

const ProductCard = ({ product }: ProductCardProps) => {
  const {
    name,
    image,
    discountPercent,
    onWishlistToggle,
    isWishlisted,
    category,
    rating,
    reviewCount,
    originalPrice,
    price,
    onAddToCart,
  } = product;
  return (
    <div className={styles.card}>
      <div className={styles.imageArea}>
        <Image src={image} alt={name} className={styles.image} width={300} height={300} />

        {discountPercent && <span className={styles.badge}>-{discountPercent}%</span>}

        <Button
          variant="icon-only"
          className={styles.wishlistButton}
          onClick={onWishlistToggle}
          aria-label={isWishlisted ? 'Remove from wishlist' : 'Add to wishlist'}
        >
          <HeartIcon filled={isWishlisted || false} />
        </Button>
      </div>

      <div className={styles.content}>
        <p className={styles.category}>{category}</p>
        <h3 className={styles.name}>{name}</h3>

        <div className={styles.ratingRow}>
          <div className={styles.stars}>
            {Array.from({ length: 5 }).map((_, i) => (
              <StarIcon key={i} filled={i < Math.round(rating)} />
            ))}
          </div>
          <span className={styles.reviewCount}>({reviewCount.toLocaleString()})</span>
        </div>

        <div className={styles.priceRow}>
          <span className={styles.price}>${price.toFixed(2)}</span>
          {originalPrice && (
            <span className={styles.originalPrice}>${originalPrice.toFixed(2)}</span>
          )}
        </div>

        <Button type="button" className={styles.addToCartButton} onClick={onAddToCart}>
          <CartIcon />
          Add to cart
        </Button>
      </div>
    </div>
  );
};

export default ProductCard;
