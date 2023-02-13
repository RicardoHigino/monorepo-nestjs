import { MyLibraryService } from '@library/my-library';
import { Module } from '@nestjs/common';
import { SecondAppService } from 'apps/second-app/src/second-app.service';
import { AppController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService, SecondAppService, MyLibraryService],
})
export class AppModule {}
