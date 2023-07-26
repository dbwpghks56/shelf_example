import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'api.dart';

part 'service.g.dart';

class Service {
  @Route.get('/say-hi2/<name>')
  Response _hi(Request request, String name) => Response.ok('hi2 $name');

  @Route.all('/<ignored|.*>')
  Response _notFound(Request request) => Response.notFound('Page not found');

  Handler get handler => _$ServiceRouter(this);

  // Handler get handler {
  //   final router = Router();
  //
  //   router.get('/say-hi/<name>', (Request request, String name) {
  //     return Response.ok('hi $name');
  //   });
  //
  //
  //
  //   router.mount('/api/', Api().router);
  //
  //   router.all('/<ignored|.*>', (Request request) {
  //     return Response.notFound('Page not found');
  //   });
  //
  //   return router;
  // }
}