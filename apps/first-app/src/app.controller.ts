import { MyLibraryService } from '@library/my-library';
import { Controller, Get } from '@nestjs/common';
import { SecondAppService } from 'apps/second-app/src/second-app.service';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(
    private readonly appService: AppService,
    private readonly secondAppService: SecondAppService,
    private readonly myLibraryService: MyLibraryService,
  ) {}

  @Get('')
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('second')
  getSecondHello(): string {
    return this.secondAppService.getHello();
  }

  @Get('library')
  getLibraryHello(): string {
    return this.myLibraryService.getHello();
  }
}
