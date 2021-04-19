import Head from 'next/head';
import styles from '../styles/home.module.css';

const Home = () => (
  <>
    <Head>
      <title>Dale Geek</title>
    </Head>
    <main className={styles.container}>
      <img src="/images/logo.png" alt="Dale Geek" className={styles.logo} />
    </main>
  </>
);

export default Home;
