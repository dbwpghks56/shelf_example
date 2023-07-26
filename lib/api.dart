import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'service.dart';

class Api {
  Future<Response> _massages(Request request) async {
    return Response.ok([]);
  }

  Router get router{
    final router = Router();

    router.get('/messages', _massages);
    router.get('/messages/', _massages);
    router.post('/messages/', _massages);
    router.put('/messages/', _massages);
    router.delete('/messages/', _massages);

    router.all('/<ignored|.*>', (Request request) => Response.notFound('null'));

    return router;
  }
}