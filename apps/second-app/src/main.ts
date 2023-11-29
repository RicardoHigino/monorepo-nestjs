import { NestFactory } from '@nestjs/core';
import { SecondAppModule } from './second-app.module';

const port = process.env.PORT || 8080;

async function bootstrap() {
  const app = await NestFactory.create(SecondAppModule);
  await app.listen(port);
}
bootstrap();
