import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World from First App!';
  }

  getDate() {
    return new Date();
  }
}
