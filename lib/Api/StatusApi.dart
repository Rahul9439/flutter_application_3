// To parse this JSON data, do
//
//     final statusApi = statusApiFromJson(jsonString);

import 'dart:convert';

StatusApi statusApiFromJson(String str) => StatusApi.fromJson(json.decode(str));

String statusApiToJson(StatusApi data) => json.encode(data.toJson());

class StatusApi {
    StatusApi({
       required this.paymentsCount,
       required this.ordersCount,
    });

    PaymentsCount paymentsCount;
    Map<String, int> ordersCount;

    factory StatusApi.fromJson(Map<String, dynamic> json) => StatusApi(
        paymentsCount: PaymentsCount.fromJson(json["payments_count"]),
        ordersCount: Map.from(json["orders_count"]).map((k, v) => MapEntry<String, int>(k, v)),
    );

    Map<String, dynamic> toJson() => {
        "payments_count": paymentsCount.toJson(),
        "orders_count": Map.from(ordersCount).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}

class PaymentsCount {
    PaymentsCount({
       required this.publish,
       required this.future,
       required this.draft,
       required this.pending,
       required this.trash,
       required this.autoDraft,
       required this.inherit,
       required this.requestPending,
       required this.requestConfirmed,
       required this.requestFailed,
       required this.requestCompleted,
       required this.refunded,
       required this.paid,
       required this.failed,
       required this.revoked,
       required this.abandoned,
       required this.processing,
       required this.active,
       required this.inactive,
    });

    String publish;
    int future;
    int draft;
    String pending;
    int trash;
    int autoDraft;
    int inherit;
    int requestPending;
    int requestConfirmed;
    int requestFailed;
    int requestCompleted;
    int refunded;
    int paid;
    String failed;
    int revoked;
    int abandoned;
    String processing;
    int active;
    int inactive;

    factory PaymentsCount.fromJson(Map<String, dynamic> json) => PaymentsCount(
        publish: json["publish"],
        future: json["future"],
        draft: json["draft"],
        pending: json["pending"],
        trash: json["trash"],
        autoDraft: json["auto-draft"],
        inherit: json["inherit"],
        requestPending: json["request-pending"],
        requestConfirmed: json["request-confirmed"],
        requestFailed: json["request-failed"],
        requestCompleted: json["request-completed"],
        refunded: json["refunded"],
        paid: json["paid"],
        failed: json["failed"],
        revoked: json["revoked"],
        abandoned: json["abandoned"],
        processing: json["processing"],
        active: json["active"],
        inactive: json["inactive"],
    );

    Map<String, dynamic> toJson() => {
        "publish": publish,
        "future": future,
        "draft": draft,
        "pending": pending,
        "trash": trash,
        "auto-draft": autoDraft,
        "inherit": inherit,
        "request-pending": requestPending,
        "request-confirmed": requestConfirmed,
        "request-failed": requestFailed,
        "request-completed": requestCompleted,
        "refunded": refunded,
        "paid": paid,
        "failed": failed,
        "revoked": revoked,
        "abandoned": abandoned,
        "processing": processing,
        "active": active,
        "inactive": inactive,
    };
}
