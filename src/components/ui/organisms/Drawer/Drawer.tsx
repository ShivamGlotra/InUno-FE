import MoleculeDrawer from "@/components/ui/molecules/Drawer/Drawer";

export interface DrawerProps {
  open: boolean;
  title?: string;
  children: React.ReactNode;
  onClose: () => void;
}

export default function Drawer(props: DrawerProps) {
  return <MoleculeDrawer {...props} />;
}
