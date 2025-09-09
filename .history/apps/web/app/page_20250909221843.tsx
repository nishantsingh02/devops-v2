import { prismaClient } from "db";

export default async function Home() {
  const users = await prismaClient.user.findMany();
  return (
    <div>
      {JSON.stringify(users)}
    </div>
  );
}

export const revalidate = 60 // revalidate every 


// export const dynamic = "force-dynamic"

