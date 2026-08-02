import MoleculeModal from "@/components/ui/molecules/Modal/Modal";

export interface ModalProps {
  open: boolean;
  title?: string;
  children: React.ReactNode;
  onClose: () => void;
}

export default function Modal(props: ModalProps) {
  return <MoleculeModal {...props} />;
}
