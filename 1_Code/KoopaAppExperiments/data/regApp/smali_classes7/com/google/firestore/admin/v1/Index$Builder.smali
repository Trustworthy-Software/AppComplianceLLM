.class public final Lcom/google/firestore/admin/v1/Index$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Index.java"

# interfaces
.implements Lcom/google/firestore/admin/v1/IndexOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/admin/v1/Index;",
        "Lcom/google/firestore/admin/v1/Index$Builder;",
        ">;",
        "Lcom/google/firestore/admin/v1/IndexOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1943
    invoke-static {}, Lcom/google/firestore/admin/v1/Index;->access$1200()Lcom/google/firestore/admin/v1/Index;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1944
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/admin/v1/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/admin/v1/Index$1;

    .line 1936
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFields(Ljava/lang/Iterable;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;)",
            "Lcom/google/firestore/admin/v1/Index$Builder;"
        }
    .end annotation

    .line 2323
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/admin/v1/Index$IndexField;>;"
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2324
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2200(Lcom/google/firestore/admin/v1/Index;Ljava/lang/Iterable;)V

    .line 2325
    return-object p0
.end method

.method public addFields(ILcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 2301
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2302
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    .line 2303
    invoke-virtual {p2}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2302
    invoke-static {v0, p1, v1}, Lcom/google/firestore/admin/v1/Index;->access$2100(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2304
    return-object p0
.end method

.method public addFields(ILcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2259
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2260
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/admin/v1/Index;->access$2100(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2261
    return-object p0
.end method

.method public addFields(Lcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 2280
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2281
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, v1}, Lcom/google/firestore/admin/v1/Index;->access$2000(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2282
    return-object p0
.end method

.method public addFields(Lcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2238
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2239
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2000(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2240
    return-object p0
.end method

.method public clearFields()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2343
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2344
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$2300(Lcom/google/firestore/admin/v1/Index;)V

    .line 2345
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2008
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2009
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$1400(Lcom/google/firestore/admin/v1/Index;)V

    .line 2010
    return-object p0
.end method

.method public clearQueryScope()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2117
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2118
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$1800(Lcom/google/firestore/admin/v1/Index;)V

    .line 2119
    return-object p0
.end method

.method public clearState()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2429
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2430
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$2700(Lcom/google/firestore/admin/v1/Index;)V

    .line 2431
    return-object p0
.end method

.method public getFields(I)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p1, "index"    # I

    .line 2177
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0, p1}, Lcom/google/firestore/admin/v1/Index;->getFields(I)Lcom/google/firestore/admin/v1/Index$IndexField;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 2159
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getFieldsCount()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;"
        }
    .end annotation

    .line 2139
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    .line 2140
    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getFieldsList()Ljava/util/List;

    move-result-object v0

    .line 2139
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1960
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1976
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryScope()Lcom/google/firestore/admin/v1/Index$QueryScope;
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getQueryScope()Lcom/google/firestore/admin/v1/Index$QueryScope;

    move-result-object v0

    return-object v0
.end method

.method public getQueryScopeValue()I
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getQueryScopeValue()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/google/firestore/admin/v1/Index$State;
    .locals 1

    .line 2404
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getState()Lcom/google/firestore/admin/v1/Index$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 2378
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getStateValue()I

    move-result v0

    return v0
.end method

.method public removeFields(I)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2363
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2364
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2400(Lcom/google/firestore/admin/v1/Index;I)V

    .line 2365
    return-object p0
.end method

.method public setFields(ILcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 2217
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2218
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    .line 2219
    invoke-virtual {p2}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2218
    invoke-static {v0, p1, v1}, Lcom/google/firestore/admin/v1/Index;->access$1900(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2220
    return-object p0
.end method

.method public setFields(ILcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2196
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2197
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/admin/v1/Index;->access$1900(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2198
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1992
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 1993
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1300(Lcom/google/firestore/admin/v1/Index;Ljava/lang/String;)V

    .line 1994
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2026
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2027
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1500(Lcom/google/firestore/admin/v1/Index;Lcom/google/protobuf/ByteString;)V

    .line 2028
    return-object p0
.end method

.method public setQueryScope(Lcom/google/firestore/admin/v1/Index$QueryScope;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$QueryScope;

    .line 2099
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2100
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1700(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$QueryScope;)V

    .line 2101
    return-object p0
.end method

.method public setQueryScopeValue(I)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2063
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2064
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1600(Lcom/google/firestore/admin/v1/Index;I)V

    .line 2065
    return-object p0
.end method

.method public setState(Lcom/google/firestore/admin/v1/Index$State;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$State;

    .line 2416
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2417
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2600(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$State;)V

    .line 2418
    return-object p0
.end method

.method public setStateValue(I)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2390
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2391
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2500(Lcom/google/firestore/admin/v1/Index;I)V

    .line 2392
    return-object p0
.end method
