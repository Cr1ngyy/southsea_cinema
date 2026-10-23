import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieListing extends StatelessWidget {
  final Movie movie;

  const MovieListing({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${movie.title} (${movie.age})", style: TextStyle(fontSize: 30)),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              movie.posterPath,
              width: 80,
              height: 120,
              fit: BoxFit.cover,
            ),
            Text(
              "Southsea Cinema Room",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Thursday 27 Oct 2026, 20:00 - ends at 22:05"),
            SizedBox(
              height: 20,
            ),
            Text(
                "Please not that Discounts / Membership Benefits will be applied once you have selected your tickets"),
            SizedBox(
              height: 10,
            ),
            Text(movie.formattedPrice),
            SizedBox(
              height: 25,
            ),
            TicketOrderSystem()
          ],
        ),
      ),
    );
  }
}

class TicketOrderSystem extends StatefulWidget {
  final int maxTicketOrder;

  const TicketOrderSystem({super.key, this.maxTicketOrder = 5});

  @override
  State<StatefulWidget> createState() {
    return _TicketOrderSystem();
  }
}

class _TicketOrderSystem extends State<TicketOrderSystem> {
  int ticketQuantity = 0;
  int totalTickets = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                DropdownMenu<int>(
                    onSelected: (value) {
                      if (value != null) {
                        ticketQuantity = value;
                      }
                    },
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: 1, label: '1'),
                      DropdownMenuEntry(value: 2, label: '2'),
                      DropdownMenuEntry(value: 3, label: '3'),
                      DropdownMenuEntry(value: 4, label: '4'),
                      DropdownMenuEntry(value: 5, label: '5')
                    ]),
                SizedBox(
                  width: 10,
                ),
                Text('test')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _orderTickets,
              style: ElevatedButton.styleFrom(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              child: const Text("Order Ticket(s)"),
            ),
            Text("Total tickets sold: $totalTickets")
          ],
        ));
  }

  void _orderTickets() {
    if (ticketQuantity <= widget.maxTicketOrder) {
      setState(() {
        totalTickets += ticketQuantity;
      });
    }
  }
}
