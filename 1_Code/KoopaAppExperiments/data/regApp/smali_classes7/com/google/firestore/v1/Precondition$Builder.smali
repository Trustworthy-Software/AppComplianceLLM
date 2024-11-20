.class public final Lcom/google/firestore/v1/Precondition$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Precondition.java"

# interfaces
.implements Lcom/google/firestore/v1/PreconditionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Precondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Precondition;",
        "Lcom/google/firestore/v1/Precondition$Builder;",
        ">;",
        "Lcom/google/firestore/v1/PreconditionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 291
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->access$000()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Precondition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Precondition$1;

    .line 284
    invoke-direct {p0}, Lcom/google/firestore/v1/Precondition$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConditionType()Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0}, Lcom/google/firestore/v1/Precondition;->access$100(Lcom/google/firestore/v1/Precondition;)V

    .line 303
    return-object p0
.end method

.method public clearExists()Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 359
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0}, Lcom/google/firestore/v1/Precondition;->access$300(Lcom/google/firestore/v1/Precondition;)V

    .line 360
    return-object p0
.end method

.method public clearUpdateTime()Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 437
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0}, Lcom/google/firestore/v1/Precondition;->access$600(Lcom/google/firestore/v1/Precondition;)V

    .line 438
    return-object p0
.end method

.method public getConditionTypeCase()Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->getConditionTypeCase()Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getExists()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->getExists()Z

    move-result v0

    return v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasExists()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->hasExists()Z

    move-result v0

    return v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->hasUpdateTime()Z

    move-result v0

    return v0
.end method

.method public mergeUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 423
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Precondition;->access$500(Lcom/google/firestore/v1/Precondition;Lcom/google/protobuf/Timestamp;)V

    .line 425
    return-object p0
.end method

.method public setExists(Z)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 344
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 345
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Precondition;->access$200(Lcom/google/firestore/v1/Precondition;Z)V

    .line 346
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 410
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Precondition;->access$400(Lcom/google/firestore/v1/Precondition;Lcom/google/protobuf/Timestamp;)V

    .line 412
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 396
    invoke-virtual {p0}, Lcom/google/firestore/v1/Precondition$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Precondition;->access$400(Lcom/google/firestore/v1/Precondition;Lcom/google/protobuf/Timestamp;)V

    .line 398
    return-object p0
.end method
