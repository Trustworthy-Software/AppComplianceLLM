.class public final Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$Filter;",
        "Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1039
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$700()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1040
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredQuery$1;

    .line 1032
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCompositeFilter()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1122
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1100(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 1124
    return-object p0
.end method

.method public clearFieldFilter()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1194
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1195
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1400(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 1196
    return-object p0
.end method

.method public clearFilterType()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1049
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1050
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$800(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 1051
    return-object p0
.end method

.method public clearUnaryFilter()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1266
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1267
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1700(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 1268
    return-object p0
.end method

.method public getCompositeFilter()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getCompositeFilter()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFieldFilter()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getFieldFilter()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFilterTypeCase()Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getFilterTypeCase()Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getUnaryFilter()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getUnaryFilter()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    move-result-object v0

    return-object v0
.end method

.method public hasCompositeFilter()Z
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->hasCompositeFilter()Z

    move-result v0

    return v0
.end method

.method public hasFieldFilter()Z
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->hasFieldFilter()Z

    move-result v0

    return v0
.end method

.method public hasUnaryFilter()Z
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->hasUnaryFilter()Z

    move-result v0

    return v0
.end method

.method public mergeCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 1110
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1111
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1000(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V

    .line 1112
    return-object p0
.end method

.method public mergeFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 1182
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1183
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1300(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 1184
    return-object p0
.end method

.method public mergeUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 1254
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1255
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1600(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    .line 1256
    return-object p0
.end method

.method public setCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    .line 1098
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$900(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V

    .line 1100
    return-object p0
.end method

.method public setCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 1085
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$900(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V

    .line 1087
    return-object p0
.end method

.method public setFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    .line 1170
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1200(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 1172
    return-object p0
.end method

.method public setFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 1157
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1158
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1200(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 1159
    return-object p0
.end method

.method public setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    .line 1242
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1243
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1500(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    .line 1244
    return-object p0
.end method

.method public setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 1229
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->copyOnWrite()V

    .line 1230
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1500(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    .line 1231
    return-object p0
.end method
