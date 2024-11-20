.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTraceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTraceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10397
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$19700()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10398
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 10390
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;

    .line 10521
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10522
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10523
    invoke-virtual {p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    .line 10522
    invoke-static {v0, p1, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 10524
    return-object p0
.end method

.method public addAction(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    .line 10503
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10504
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 10505
    return-object p0
.end method

.method public addAction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;

    .line 10512
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10513
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 10514
    return-object p0
.end method

.method public addAction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    .line 10494
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10495
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 10496
    return-object p0
.end method

.method public addAllAction(Ljava/lang/Iterable;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;",
            ">;)",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;"
        }
    .end annotation

    .line 10531
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;>;"
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10532
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Ljava/lang/Iterable;)V

    .line 10533
    return-object p0
.end method

.method public clearAction()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1

    .line 10539
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10540
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 10541
    return-object p0
.end method

.method public clearTraceDescription()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1

    .line 10585
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10586
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 10587
    return-object p0
.end method

.method public clearTraceId()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1

    .line 10434
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10435
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$19900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 10436
    return-object p0
.end method

.method public getAction(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
    .locals 1
    .param p1, "index"    # I

    .line 10469
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getAction(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    move-result-object v0

    return-object v0
.end method

.method public getActionCount()I
    .locals 1

    .line 10463
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getActionCount()I

    move-result v0

    return v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;",
            ">;"
        }
    .end annotation

    .line 10455
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10456
    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getActionList()Ljava/util/List;

    move-result-object v0

    .line 10455
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTraceDescription()Ljava/lang/String;
    .locals 1

    .line 10558
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getTraceDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10567
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getTraceDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 10407
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getTraceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10416
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getTraceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAction(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 10547
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10548
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;I)V

    .line 10549
    return-object p0
.end method

.method public setAction(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;

    .line 10485
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10486
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10487
    invoke-virtual {p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    .line 10486
    invoke-static {v0, p1, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 10488
    return-object p0
.end method

.method public setAction(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;

    .line 10476
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10477
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;)V

    .line 10478
    return-object p0
.end method

.method public setTraceDescription(Ljava/lang/String;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10576
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10577
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Ljava/lang/String;)V

    .line 10578
    return-object p0
.end method

.method public setTraceDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10596
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10597
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Lcom/google/protobuf/ByteString;)V

    .line 10598
    return-object p0
.end method

.method public setTraceId(Ljava/lang/String;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10425
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10426
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$19800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Ljava/lang/String;)V

    .line 10427
    return-object p0
.end method

.method public setTraceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10445
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->copyOnWrite()V

    .line 10446
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->access$20000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;Lcom/google/protobuf/ByteString;)V

    .line 10447
    return-object p0
.end method
