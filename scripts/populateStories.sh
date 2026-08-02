cat > Chip/Chip.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Chip from "./Chip";

const meta: Meta<typeof Chip> = {
  title: "Atoms/Chip",
  component: Chip,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Chip>;

export const Default: Story = {
  args: {
    label: "Category",
  },
};

export const Selected: Story = {
  args: {
    label: "Selected",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    label: "Disabled",
    disabled: true,
  },
};
EOF


cat > ColorSwatch/ColorSwatch.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import ColorSwatch from "./ColorSwatch";

const meta: Meta<typeof ColorSwatch> = {
  title: "Atoms/ColorSwatch",
  component: ColorSwatch,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ColorSwatch>;

export const Default: Story = {
  args: {
    color: "#000000",
    label: "Black",
  },
};

export const Selected: Story = {
  args: {
    color: "#2563eb",
    label: "Blue",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    color: "#ef4444",
    label: "Red",
    disabled: true,
  },
};
EOF


cat > Container/Container.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Container from "./Container";

const meta: Meta<typeof Container> = {
  title: "Atoms/Container",
  component: Container,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Container>;

export const Small: Story = {
  args: {
    size: "sm",
    children: "Small container",
  },
};

export const Medium: Story = {
  args: {
    size: "md",
    children: "Medium container",
  },
};

export const Large: Story = {
  args: {
    size: "lg",
    children: "Large container",
  },
};

export const ExtraLarge: Story = {
  args: {
    size: "xl",
    children: "Extra large container",
  },
};

export const FullWidth: Story = {
  args: {
    size: "full",
    children: "Full width container",
  },
};
EOF


cat > DiscountBadge/DiscountBadge.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import DiscountBadge from "./DiscountBadge";

const meta: Meta<typeof DiscountBadge> = {
  title: "Atoms/DiscountBadge",
  component: DiscountBadge,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof DiscountBadge>;

export const TenPercent: Story = {
  args: {
    percentage: 10,
  },
};

export const TwentyFivePercent: Story = {
  args: {
    percentage: 25,
  },
};

export const FiftyPercent: Story = {
  args: {
    percentage: 50,
  },
};
EOF


cat > Divider/Divider.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Divider from "./Divider";

const meta: Meta<typeof Divider> = {
  title: "Atoms/Divider",
  component: Divider,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Divider>;

export const Horizontal: Story = {
  args: {
    orientation: "horizontal",
  },
};

export const Vertical: Story = {
  render: () => (
    <div style={{ height: "100px" }}>
      <Divider orientation="vertical" />
    </div>
  ),
};
EOF


cat > FormHelperText/FormHelperText.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import FormHelperText from "./FormHelperText";

const meta: Meta<typeof FormHelperText> = {
  title: "Atoms/FormHelperText",
  component: FormHelperText,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof FormHelperText>;

export const Default: Story = {
  args: {
    children: "Enter a valid value.",
  },
};

export const Error: Story = {
  args: {
    children: "This field is required.",
    error: true,
  },
};
EOF


cat > Heading/Heading.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Heading from "./Heading";

const meta: Meta<typeof Heading> = {
  title: "Atoms/Heading",
  component: Heading,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Heading>;

export const H1: Story = {
  args: {
    level: 1,
    children: "Main Heading",
  },
};

export const H2: Story = {
  args: {
    level: 2,
    children: "Section Heading",
  },
};

export const H3: Story = {
  args: {
    level: 3,
    children: "Subsection Heading",
  },
};

export const H4: Story = {
  args: {
    level: 4,
    children: "Small Heading",
  },
};
EOF


cat > Icon/Icon.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Icon from "./Icon";

const meta: Meta<typeof Icon> = {
  title: "Atoms/Icon",
  component: Icon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Icon>;

export const Small: Story = {
  args: {
    size: "sm",
    children: "★",
  },
};

export const Medium: Story = {
  args: {
    size: "md",
    children: "★",
  },
};

export const Large: Story = {
  args: {
    size: "lg",
    children: "★",
  },
};
EOF


cat > Image/Image.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Image from "./Image";

const meta: Meta<typeof Image> = {
  title: "Atoms/Image",
  component: Image,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Image>;

export const Default: Story = {
  args: {
    src: "https://placehold.co/400x300",
    alt: "Placeholder image",
    width: 400,
    height: 300,
  },
};

export const Contain: Story = {
  args: {
    src: "https://placehold.co/400x300",
    alt: "Placeholder image",
    width: 400,
    height: 300,
    objectFit: "contain",
  },
};

export const Cover: Story = {
  args: {
    src: "https://placehold.co/400x300",
    alt: "Placeholder image",
    width: 400,
    height: 300,
    objectFit: "cover",
  },
};
EOF


cat > Input/Input.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Input from "./Input";

const meta: Meta<typeof Input> = {
  title: "Atoms/Input",
  component: Input,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Input>;

export const Default: Story = {
  args: {
    placeholder: "Enter text...",
  },
};

export const WithValue: Story = {
  args: {
    defaultValue: "Example value",
  },
};

export const Error: Story = {
  args: {
    placeholder: "Invalid input",
    error: true,
  },
};

export const Disabled: Story = {
  args: {
    placeholder: "Disabled input",
    disabled: true,
  },
};
EOF


cat > Kbd/Kbd.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Kbd from "./Kbd";

const meta: Meta<typeof Kbd> = {
  title: "Atoms/Kbd",
  component: Kbd,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Kbd>;

export const Default: Story = {
  args: {
    children: "Enter",
  },
};

export const Command: Story = {
  args: {
    children: "⌘ K",
  },
};

export const Escape: Story = {
  args: {
    children: "ESC",
  },
};
EOF


cat > Label/Label.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Label from "./Label";

const meta: Meta<typeof Label> = {
  title: "Atoms/Label",
  component: Label,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Label>;

export const Default: Story = {
  args: {
    children: "Email Address",
  },
};

export const Required: Story = {
  args: {
    children: "Email Address",
    required: true,
  },
};
EOF


cat > Link/Link.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Link from "./Link";

const meta: Meta<typeof Link> = {
  title: "Atoms/Link",
  component: Link,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Link>;

export const Default: Story = {
  args: {
    href: "#",
    children: "Learn More",
  },
};

export const ProductLink: Story = {
  args: {
    href: "#",
    children: "View Product",
  },
};
EOF


cat > Logo/Logo.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Logo from "./Logo";

const meta: Meta<typeof Logo> = {
  title: "Atoms/Logo",
  component: Logo,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Logo>;

export const Default: Story = {
  args: {
    text: "Store",
  },
};

export const BrandName: Story = {
  args: {
    text: "Amazon",
  },
};
EOF


cat > Price/Price.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Price from "./Price";

const meta: Meta<typeof Price> = {
  title: "Atoms/Price",
  component: Price,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Price>;

export const Default: Story = {
  args: {
    amount: 49.99,
  },
};

export const WholeNumber: Story = {
  args: {
    amount: 100,
  },
};

export const CanadianDollar: Story = {
  args: {
    amount: 49.99,
    currency: "CAD",
    locale: "en-CA",
  },
};
EOF


cat > ProgressBar/ProgressBar.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import ProgressBar from "./ProgressBar";

const meta: Meta<typeof ProgressBar> = {
  title: "Atoms/ProgressBar",
  component: ProgressBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProgressBar>;

export const Empty: Story = {
  args: {
    value: 0,
  },
};

export const Quarter: Story = {
  args: {
    value: 25,
  },
};

export const Half: Story = {
  args: {
    value: 50,
  },
};

export const Complete: Story = {
  args: {
    value: 100,
  },
};
EOF


cat > QuantityStepperButton/QuantityStepperButton.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import QuantityStepperButton from "./QuantityStepperButton";

const meta: Meta<typeof QuantityStepperButton> = {
  title: "Atoms/QuantityStepperButton",
  component: QuantityStepperButton,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof QuantityStepperButton>;

export const Increase: Story = {
  args: {
    action: "increase",
  },
};

export const Decrease: Story = {
  args: {
    action: "decrease",
  },
};

export const Disabled: Story = {
  args: {
    action: "increase",
    disabled: true,
  },
};
EOF


cat > Radio/Radio.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Radio from "./Radio";

const meta: Meta<typeof Radio> = {
  title: "Atoms/Radio",
  component: Radio,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Radio>;

export const Default: Story = {
  args: {
    name: "option",
  },
};

export const Selected: Story = {
  args: {
    name: "option",
    defaultChecked: true,
  },
};

export const Disabled: Story = {
  args: {
    name: "option",
    disabled: true,
  },
};
EOF


cat > RatingStarUnit/RatingStarUnit.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import RatingStarUnit from "./RatingStarUnit";

const meta: Meta<typeof RatingStarUnit> = {
  title: "Atoms/RatingStarUnit",
  component: RatingStarUnit,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RatingStarUnit>;

export const Empty: Story = {};

export const Filled: Story = {
  args: {
    filled: true,
  },
};

export const Half: Story = {
  args: {
    half: true,
  },
};
EOF


cat > RichText/RichText.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import RichText from "./RichText";

const meta: Meta<typeof RichText> = {
  title: "Atoms/RichText",
  component: RichText,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RichText>;

export const Paragraph: Story = {
  args: {
    children: "This is an example of rich text content.",
  },
};

export const MultipleElements: Story = {
  args: {
    children: "Product description content.",
  },
};
EOF


cat > SearchInput/SearchInput.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import SearchInput from "./SearchInput";

const meta: Meta<typeof SearchInput> = {
  title: "Atoms/SearchInput",
  component: SearchInput,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchInput>;

export const Default: Story = {
  args: {
    placeholder: "Search...",
  },
};

export const ProductSearch: Story = {
  args: {
    placeholder: "Search for products, brands, and more",
  },
};
EOF


cat > Select/Select.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Select from "./Select";

const meta: Meta<typeof Select> = {
  title: "Atoms/Select",
  component: Select,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Select>;

export const Default: Story = {
  args: {
    options: [
      { label: "Select an option", value: "" },
      { label: "Option One", value: "one" },
      { label: "Option Two", value: "two" },
      { label: "Option Three", value: "three" },
    ],
  },
};

export const Categories: Story = {
  args: {
    options: [
      { label: "All Categories", value: "all" },
      { label: "Electronics", value: "electronics" },
      { label: "Clothing", value: "clothing" },
      { label: "Home", value: "home" },
    ],
  },
};
EOF


cat > ShippingBadge/ShippingBadge.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import ShippingBadge from "./ShippingBadge";

const meta: Meta<typeof ShippingBadge> = {
  title: "Atoms/ShippingBadge",
  component: ShippingBadge,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ShippingBadge>;

export const FreeShipping: Story = {
  args: {
    free: true,
  },
};

export const Custom: Story = {
  args: {
    children: "Ships in 2 days",
  },
};
EOF


cat > SizeOption/SizeOption.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import SizeOption from "./SizeOption";

const meta: Meta<typeof SizeOption> = {
  title: "Atoms/SizeOption",
  component: SizeOption,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SizeOption>;

export const Small: Story = {
  args: {
    size: "S",
  },
};

export const Medium: Story = {
  args: {
    size: "M",
  },
};

export const Selected: Story = {
  args: {
    size: "L",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    size: "XL",
    disabled: true,
  },
};
EOF


cat > Skeleton/Skeleton.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Skeleton from "./Skeleton";

const meta: Meta<typeof Skeleton> = {
  title: "Atoms/Skeleton",
  component: Skeleton,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Skeleton>;

export const Text: Story = {
  args: {
    width: "300px",
    height: "16px",
  },
};

export const Heading: Story = {
  args: {
    width: "200px",
    height: "28px",
  },
};

export const Image: Story = {
  args: {
    width: "300px",
    height: "200px",
  },
};
EOF


cat > Spinner/Spinner.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Spinner from "./Spinner";

const meta: Meta<typeof Spinner> = {
  title: "Atoms/Spinner",
  component: Spinner,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Spinner>;

export const Small: Story = {
  args: {
    size: "sm",
  },
};

export const Medium: Story = {
  args: {
    size: "md",
  },
};

export const Large: Story = {
  args: {
    size: "lg",
  },
};
EOF


cat > StarIcon/StarIcon.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import StarIcon from "./StarIcon";

const meta: Meta<typeof StarIcon> = {
  title: "Atoms/StarIcon",
  component: StarIcon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StarIcon>;

export const Empty: Story = {};

export const Filled: Story = {
  args: {
    filled: true,
  },
};

export const Large: Story = {
  args: {
    size: 32,
    filled: true,
  },
};
EOF


cat > StockDot/StockDot.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import StockDot from "./StockDot";

const meta: Meta<typeof StockDot> = {
  title: "Atoms/StockDot",
  component: StockDot,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StockDot>;

export const InStock: Story = {
  args: {
    status: "in-stock",
  },
};

export const LowStock: Story = {
  args: {
    status: "low-stock",
  },
};

export const OutOfStock: Story = {
  args: {
    status: "out-of-stock",
  },
};
EOF


cat > StrikethroughPrice/StrikethroughPrice.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import StrikethroughPrice from "./StrikethroughPrice";

const meta: Meta<typeof StrikethroughPrice> = {
  title: "Atoms/StrikethroughPrice",
  component: StrikethroughPrice,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StrikethroughPrice>;

export const Default: Story = {
  args: {
    amount: 99.99,
  },
};

export const CanadianDollar: Story = {
  args: {
    amount: 99.99,
    currency: "CAD",
  },
};
EOF


cat > Switch/Switch.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Switch from "./Switch";

const meta: Meta<typeof Switch> = {
  title: "Atoms/Switch",
  component: Switch,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Switch>;

export const Off: Story = {};

export const On: Story = {
  args: {
    defaultChecked: true,
  },
};

export const Disabled: Story = {
  args: {
    disabled: true,
  },
};

export const DisabledOn: Story = {
  args: {
    disabled: true,
    defaultChecked: true,
  },
};
EOF


cat > Text/Text.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Text from "./Text";

const meta: Meta<typeof Text> = {
  title: "Atoms/Text",
  component: Text,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Text>;

export const Default: Story = {
  args: {
    children: "Body text",
  },
};

export const Small: Story = {
  args: {
    children: "Small text",
    size: "sm",
  },
};

export const Large: Story = {
  args: {
    children: "Large text",
    size: "lg",
  },
};

export const Bold: Story = {
  args: {
    children: "Bold text",
    weight: "bold",
  },
};
EOF


cat > TextArea/TextArea.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import TextArea from "./TextArea";

const meta: Meta<typeof TextArea> = {
  title: "Atoms/TextArea",
  component: TextArea,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof TextArea>;

export const Default: Story = {
  args: {
    placeholder: "Enter your message...",
  },
};

export const WithValue: Story = {
  args: {
    defaultValue: "Example text content.",
  },
};

export const Error: Story = {
  args: {
    placeholder: "Invalid content",
    error: true,
  },
};

export const Disabled: Story = {
  args: {
    placeholder: "Disabled textarea",
    disabled: true,
  },
};
EOF


cat > Tooltip/Tooltip.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import Tooltip from "./Tooltip";

const meta: Meta<typeof Tooltip> = {
  title: "Atoms/Tooltip",
  component: Tooltip,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Tooltip>;

export const Default: Story = {
  args: {
    content: "This is a tooltip",
    children: "Hover me",
  },
};

export const ProductTooltip: Story = {
  args: {
    content: "Add this product to your wishlist",
    children: "♡",
  },
};
EOF


cat > WishlistIcon/WishlistIcon.stories.tsx <<'EOF'
import type { Meta, StoryObj } from "@storybook/react";
import WishlistIcon from "./WishlistIcon";

const meta: Meta<typeof WishlistIcon> = {
  title: "Atoms/WishlistIcon",
  component: WishlistIcon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof WishlistIcon>;

export const Default: Story = {};

export const Active: Story = {
  args: {
    active: true,
  },
};

export const Large: Story = {
  args: {
    size: 32,
  },
};
EOF

echo "All .stories.tsx files created successfully."