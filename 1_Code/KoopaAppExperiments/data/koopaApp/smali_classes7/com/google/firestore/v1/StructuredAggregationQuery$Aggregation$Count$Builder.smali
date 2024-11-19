.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$CountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$CountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 381
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->access$000()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$1;

    .line 374
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUpTo()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->access$300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    .line 501
    return-object p0
.end method

.method public getUpTo()Lcom/google/protobuf/Int64Value;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getUpTo()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public hasUpTo()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->hasUpTo()Z

    move-result v0

    return v0
.end method

.method public mergeUpTo(Lcom/google/protobuf/Int64Value;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int64Value;

    .line 480
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->access$200(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;Lcom/google/protobuf/Int64Value;)V

    .line 482
    return-object p0
.end method

.method public setUpTo(Lcom/google/protobuf/Int64Value$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Int64Value$Builder;

    .line 460
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->copyOnWrite()V

    .line 461
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-virtual {p1}, Lcom/google/protobuf/Int64Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Int64Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->access$100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;Lcom/google/protobuf/Int64Value;)V

    .line 462
    return-object p0
.end method

.method public setUpTo(Lcom/google/protobuf/Int64Value;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int64Value;

    .line 439
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->copyOnWrite()V

    .line 440
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->access$100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;Lcom/google/protobuf/Int64Value;)V

    .line 441
    return-object p0
.end method
