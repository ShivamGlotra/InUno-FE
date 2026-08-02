import Input from "@/components/ui/atoms/Input/Input";
import Button from "@/components/ui/atoms/Button/Button";
import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./NewsletterSignup.module.css";

export default function NewsletterSignup() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Stay in the loop</Heading>

      <Text>
        Subscribe to our newsletter for updates and deals.
      </Text>

      <div className={styles.form}>
        <Input placeholder="Your email address" />
        <Button>Subscribe</Button>
      </div>
    </section>
  );
}
