import HeroBanner from '@/components/ui/organisms/HeroBanner';
import Icon from '@/components/ui/atoms/Icon';
import CardContainer from '@/containers/CardContainer/CardContainer';
import {
  cardData,
  categoryData,
  todayDealProducts,
  trendingProducts,
  recommendedProducts,
} from '@/data/homePage-data';
import ClearBackgroundContainerProps from '@/containers/CategoryContainer/NoBackgroundContainer/Container';
import WhiteBackgroundContainer from '@/containers/CategoryContainer/WhiteBGContainer/Container';
import LandingHeroBannerContainer from '@/containers/LandingHeroBannerContainer/LandingHeroBannerContainer';

const Home = () => {
  return (
    <main className="container">
      <LandingHeroBannerContainer
        badgeTitle="Exclusive Offer"
        heroBannerProps={{
          title: 'Summer Sale',
          subtitle: 'Up to 50% off',
          description:
            "Discover our exclusive summer collection and enjoy amazing discounts on your favorite products. Don't miss out on this limited-time offer!",
          buttonLabel: 'Shop Now',
          secondaryButtonLabel: 'Ask Assistant',
        }}
      />
      <CardContainer cards={cardData} />
      <ClearBackgroundContainerProps
        categories={todayDealProducts.map((product, index) => ({
          id: `today-deal-${index}`,
          name: product.name,
          itemCount: '1',
          badge: 'Deal',
          color: '#FF5733',
        }))}
      />
      {/* <ClearBackgroundContainerProps
        categories={categoryData.map((category) => ({
          id: category.id,
          name: category.name,
          itemCount: category.itemCount,
          badge: category.badge,
          color: category.color,
        }))}
      />
      <ClearBackgroundContainerProps
        categories={trendingProducts.map((product, index) => ({
          id: `trending-${index}`,
          name: product.name,
          itemCount: '1',
          badge: 'Trending',
          color: '#33C1FF',
        }))}
      /> */}
      <ClearBackgroundContainerProps
        categories={recommendedProducts.map((product, index) => ({
          id: `recommended-${index}`,
          name: product.name,
          itemCount: '1',
          badge: 'Recommended',
          color: '#33FF57',
        }))}
      />
    </main>
  );
};
export default Home;
