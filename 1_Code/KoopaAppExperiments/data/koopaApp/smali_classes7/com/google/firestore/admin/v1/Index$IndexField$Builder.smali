.class public final Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Index.java"

# interfaces
.implements Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index$IndexField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/admin/v1/Index$IndexField;",
        "Lcom/google/firestore/admin/v1/Index$IndexField$Builder;",
        ">;",
        "Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1056
    invoke-static {}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$000()Lcom/google/firestore/admin/v1/Index$IndexField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1057
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/admin/v1/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/admin/v1/Index$1;

    .line 1049
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearArrayConfig()Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1309
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$1000(Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 1310
    return-object p0
.end method

.method public clearFieldPath()Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1

    .line 1129
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1130
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$300(Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 1131
    return-object p0
.end method

.method public clearOrder()Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1

    .line 1230
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1231
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$700(Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 1232
    return-object p0
.end method

.method public clearValueMode()Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$100(Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 1068
    return-object p0
.end method

.method public getArrayConfig()Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getArrayConfig()Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    move-result-object v0

    return-object v0
.end method

.method public getArrayConfigValue()I
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getArrayConfigValue()I

    move-result v0

    return v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getFieldPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOrder()Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getOrder()Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    move-result-object v0

    return-object v0
.end method

.method public getOrderValue()I
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getOrderValue()I

    move-result v0

    return v0
.end method

.method public getValueModeCase()Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getValueModeCase()Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasArrayConfig()Z
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->hasArrayConfig()Z

    move-result v0

    return v0
.end method

.method public hasOrder()Z
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->hasOrder()Z

    move-result v0

    return v0
.end method

.method public setArrayConfig(Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    .line 1295
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1296
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$900(Lcom/google/firestore/admin/v1/Index$IndexField;Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;)V

    .line 1297
    return-object p0
.end method

.method public setArrayConfigValue(I)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1269
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1270
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$800(Lcom/google/firestore/admin/v1/Index$IndexField;I)V

    .line 1271
    return-object p0
.end method

.method public setFieldPath(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1114
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1115
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$200(Lcom/google/firestore/admin/v1/Index$IndexField;Ljava/lang/String;)V

    .line 1116
    return-object p0
.end method

.method public setFieldPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1146
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1147
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$400(Lcom/google/firestore/admin/v1/Index$IndexField;Lcom/google/protobuf/ByteString;)V

    .line 1148
    return-object p0
.end method

.method public setOrder(Lcom/google/firestore/admin/v1/Index$IndexField$Order;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 1216
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$600(Lcom/google/firestore/admin/v1/Index$IndexField;Lcom/google/firestore/admin/v1/Index$IndexField$Order;)V

    .line 1218
    return-object p0
.end method

.method public setOrderValue(I)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1188
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->copyOnWrite()V

    .line 1189
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->access$500(Lcom/google/firestore/admin/v1/Index$IndexField;I)V

    .line 1190
    return-object p0
.end method
