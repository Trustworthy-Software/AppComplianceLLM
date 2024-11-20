.class public final Lcom/google/protobuf/Struct$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Struct.java"

# interfaces
.implements Lcom/google/protobuf/StructOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Struct;",
        "Lcom/google/protobuf/Struct$Builder;",
        ">;",
        "Lcom/google/protobuf/StructOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 240
    invoke-static {}, Lcom/google/protobuf/Struct;->access$000()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Struct$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Struct$1;

    .line 233
    invoke-direct {p0}, Lcom/google/protobuf/Struct$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFields()Lcom/google/protobuf/Struct$Builder;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/Struct$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-static {v0}, Lcom/google/protobuf/Struct;->access$100(Lcom/google/protobuf/Struct;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 267
    return-object p0
.end method

.method public containsFields(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 261
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/google/protobuf/Struct$Builder;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-virtual {v0}, Lcom/google/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Struct;

    .line 302
    invoke-virtual {v0}, Lcom/google/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 301
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrDefault(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/protobuf/Value;

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 317
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/protobuf/Struct;

    .line 318
    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 319
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/protobuf/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Value;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getFieldsOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 333
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/protobuf/Struct;

    .line 334
    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 335
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/protobuf/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Value;

    return-object v2

    .line 336
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public putAllFields(Ljava/util/Map;)Lcom/google/protobuf/Struct$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ">;)",
            "Lcom/google/protobuf/Struct$Builder;"
        }
    .end annotation

    .line 365
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/protobuf/Value;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Struct$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-static {v0}, Lcom/google/protobuf/Struct;->access$100(Lcom/google/protobuf/Struct;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 367
    return-object p0
.end method

.method public putFields(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/protobuf/Value;

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 351
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 352
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Struct$Builder;->copyOnWrite()V

    .line 353
    iget-object v2, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/protobuf/Struct;

    invoke-static {v2}, Lcom/google/protobuf/Struct;->access$100(Lcom/google/protobuf/Struct;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-object p0
.end method

.method public removeFields(Ljava/lang/String;)Lcom/google/protobuf/Struct$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Struct$Builder;->copyOnWrite()V

    .line 281
    iget-object v1, p0, Lcom/google/protobuf/Struct$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v1}, Lcom/google/protobuf/Struct;->access$100(Lcom/google/protobuf/Struct;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-object p0
.end method
