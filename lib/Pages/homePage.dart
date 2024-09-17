import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/Address.dart';

class ViaCepService {
  final Dio _dio = Dio();

  Future<Address> fetchAddress(String cep) async {
    try {
      final response = await _dio.get('https://viacep.com.br/ws/$cep/json/');
      if (response.statusCode == 200) {
        return Address.fromJson(response.data);
      } else {
        throw Exception('Failed to load address');
      }
    } catch (e) {
      throw Exception('Failed to load address: $e');
    }
  }
}

class AddressSearchScreen extends StatefulWidget {
  @override
  _AddressSearchScreenState createState() => _AddressSearchScreenState();
}

class _AddressSearchScreenState extends State<AddressSearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final ViaCepService _viaCepService = ViaCepService();
  Address? _address;
  bool _isLoading = false;
  String? _error;

  void _searchCep() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final address = await _viaCepService.fetchAddress(_controller.text);
      setState(() {
        _address = address;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seu endereço', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Coloque um CEP',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _searchCep,
              child: Text('Buscar'),
            ),
            SizedBox(height: 16.0),
            _isLoading
                ? CircularProgressIndicator()
                : _error != null
                ? Text('Error: $_error')
                : _address != null
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text('Logradouro: ${_address!.logradouro}'),
                Text('Bairro: ${_address!.bairro}'),
                Text('Localidade: ${_address!.localidade}'),
                Text('UF: ${_address!.uf}'),
              ],
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}