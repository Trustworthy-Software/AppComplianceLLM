.class public final Lcom/google/firestore/v1/ListenResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListenResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListenResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListenResponse$Builder;,
        Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListenResponse;",
        "Lcom/google/firestore/v1/ListenResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

.field public static final DOCUMENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final DOCUMENT_DELETE_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final FILTER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_CHANGE_FIELD_NUMBER:I = 0x2


# instance fields
.field private responseTypeCase_:I

.field private responseType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 996
    new-instance v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenResponse;-><init>()V

    .line 999
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ListenResponse;
    sput-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    .line 1000
    const-class v1, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1002
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ListenResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearResponseType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearDocumentDelete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearDocumentRemove()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setFilter(Lcom/google/firestore/v1/ExistenceFilter;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeFilter(Lcom/google/firestore/v1/ExistenceFilter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/TargetChange;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setTargetChange(Lcom/google/firestore/v1/TargetChange;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/TargetChange;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeTargetChange(Lcom/google/firestore/v1/TargetChange;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearTargetChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentChange;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentChange;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse;->clearDocumentChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenResponse;->mergeDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V

    return-void
.end method

.method private clearDocumentChange()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 207
    :cond_0
    return-void
.end method

.method private clearDocumentDelete()V
    .locals 2

    .line 273
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 277
    :cond_0
    return-void
.end method

.method private clearDocumentRemove()V
    .locals 2

    .line 348
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 352
    :cond_0
    return-void
.end method

.method private clearFilter()V
    .locals 2

    .line 433
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 437
    :cond_0
    return-void
.end method

.method private clearResponseType()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private clearTargetChange()V
    .locals 2

    .line 133
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 137
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 1005
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method private mergeDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 187
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->getDefaultInstance()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentChange;->newBuilder(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/DocumentChange$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentChange$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentChange$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 193
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 194
    return-void
.end method

.method private mergeDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 257
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentDelete;->newBuilder(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/DocumentDelete$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentDelete$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 263
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 264
    return-void
.end method

.method private mergeDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 331
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->getDefaultInstance()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->newBuilder(Lcom/google/firestore/v1/DocumentRemove;)Lcom/google/firestore/v1/DocumentRemove$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentRemove$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 337
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 338
    return-void
.end method

.method private mergeFilter(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 414
    invoke-static {}, Lcom/google/firestore/v1/ExistenceFilter;->getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/ExistenceFilter;->newBuilder(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ExistenceFilter$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 418
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 420
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 421
    return-void
.end method

.method private mergeTargetChange(Lcom/google/firestore/v1/TargetChange;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->getDefaultInstance()Lcom/google/firestore/v1/TargetChange;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->newBuilder(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/TargetChange$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TargetChange$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TargetChange$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 123
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 124
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 514
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ListenResponse;

    .line 517
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ListenResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ListenResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ListenResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation

    .line 1011
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocumentChange(Lcom/google/firestore/v1/DocumentChange;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 176
    return-void
.end method

.method private setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 245
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 246
    return-void
.end method

.method private setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 318
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 319
    return-void
.end method

.method private setFilter(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 399
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 400
    return-void
.end method

.method private setTargetChange(Lcom/google/firestore/v1/TargetChange;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iput-object p1, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    .line 106
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 941
    sget-object v0, Lcom/google/firestore/v1/ListenResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 989
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 986
    :pswitch_0
    return-object v1

    .line 983
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 968
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 969
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListenResponse;>;"
    if-nez v0, :cond_1

    .line 970
    const-class v1, Lcom/google/firestore/v1/ListenResponse;

    monitor-enter v1

    .line 971
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 972
    if-nez v0, :cond_0

    .line 973
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 976
    sput-object v0, Lcom/google/firestore/v1/ListenResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 978
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 980
    :cond_1
    :goto_0
    return-object v0

    .line 965
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListenResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    return-object v0

    .line 949
    :pswitch_4
    const-string v1, "responseType_"

    const-string v2, "responseTypeCase_"

    const-class v3, Lcom/google/firestore/v1/TargetChange;

    const-class v4, Lcom/google/firestore/v1/DocumentChange;

    const-class v5, Lcom/google/firestore/v1/DocumentDelete;

    const-class v6, Lcom/google/firestore/v1/ExistenceFilter;

    const-class v7, Lcom/google/firestore/v1/DocumentRemove;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 958
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 961
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ListenResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ListenResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 946
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ListenResponse$Builder;-><init>(Lcom/google/firestore/v1/ListenResponse$1;)V

    return-object v0

    .line 943
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenResponse;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDocumentChange()Lcom/google/firestore/v1/DocumentChange;
    .locals 2

    .line 160
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    return-object v0

    .line 163
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->getDefaultInstance()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;
    .locals 2

    .line 230
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0

    .line 233
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;
    .locals 2

    .line 302
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->getDefaultInstance()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 2

    .line 381
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0

    .line 384
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ExistenceFilter;->getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->forNumber(I)Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChange()Lcom/google/firestore/v1/TargetChange;
    .locals 2

    .line 90
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->getDefaultInstance()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    return-object v0
.end method

.method public hasDocumentChange()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentDelete()Z
    .locals 2

    .line 219
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentRemove()Z
    .locals 2

    .line 290
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilter()Z
    .locals 2

    .line 367
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTargetChange()Z
    .locals 2

    .line 79
    iget v0, p0, Lcom/google/firestore/v1/ListenResponse;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
