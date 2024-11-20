.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$AvgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$AvgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1145
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->access$1000()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1146
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$1;

    .line 1138
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearField()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;
    .locals 1

    .line 1215
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->copyOnWrite()V

    .line 1216
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->access$1300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    .line 1217
    return-object p0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public hasField()Z
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->hasField()Z

    move-result v0

    return v0
.end method

.method public mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 1204
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->copyOnWrite()V

    .line 1205
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->access$1200(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 1206
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    .line 1192
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->copyOnWrite()V

    .line 1193
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->access$1100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 1194
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 1179
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->copyOnWrite()V

    .line 1180
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->access$1100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 1181
    return-object p0
.end method
