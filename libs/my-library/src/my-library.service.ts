import { Injectable } from '@nestjs/common';

@Injectable()
export class MyLibraryService {
  getHello(): string {
    return 'Hello World from My Library!';
  }

  getDate(): string {
    return new Date().toDateString();
  }
}
