import Tabs from "@/components/ui/molecules/Tabs/Tabs";

export default function ProductDescriptionTabs() {
  return (
    <Tabs
      tabs={[
        {
          id: "description",
          label: "Description",
          content: "Detailed product description goes here.",
        },
        {
          id: "specifications",
          label: "Specifications",
          content: "Product specifications go here.",
        },
        {
          id: "shipping",
          label: "Shipping",
          content: "Shipping information goes here.",
        },
      ]}
    />
  );
}
