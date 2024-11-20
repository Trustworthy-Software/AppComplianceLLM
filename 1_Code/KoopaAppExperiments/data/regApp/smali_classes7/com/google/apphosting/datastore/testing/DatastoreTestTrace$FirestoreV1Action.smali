.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirestoreV1Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ActionCase;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocumentsOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListenOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListenOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQueryOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocumentsOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIdsOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RollbackOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CommitOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransactionOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocumentOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocumentOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocumentOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocumentsOrBuilder;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;,
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocumentOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1ActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final BATCH_GET_DOCUMENTS_FIELD_NUMBER:I = 0xa

.field public static final BEGIN_TRANSACTION_FIELD_NUMBER:I = 0x6

.field public static final COMMIT_FIELD_NUMBER:I = 0x7

.field public static final CREATE_DOCUMENT_FIELD_NUMBER:I = 0x3

.field public static final DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER:I = 0xca

.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

.field public static final DELETE_DOCUMENT_FIELD_NUMBER:I = 0x5

.field public static final GET_DOCUMENT_FIELD_NUMBER:I = 0x1

.field public static final LISTEN_FIELD_NUMBER:I = 0xc

.field public static final LIST_COLLECTION_IDS_FIELD_NUMBER:I = 0x9

.field public static final LIST_DOCUMENTS_FIELD_NUMBER:I = 0x2

.field public static final MATCHING_DOCUMENTS_FIELD_NUMBER:I = 0xcb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_LISTEN_FIELD_NUMBER:I = 0xd

.field public static final ROLLBACK_FIELD_NUMBER:I = 0x8

.field public static final RUN_QUERY_FIELD_NUMBER:I = 0xb

.field public static final STATUS_FIELD_NUMBER:I = 0xc9

.field public static final UPDATE_DOCUMENT_FIELD_NUMBER:I = 0x4


# instance fields
.field private actionCase_:I

.field private action_:Ljava/lang/Object;

.field private databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

.field private matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9450
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;-><init>()V

    .line 9453
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 9454
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9456
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7279
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 1316
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1317
    return-void
.end method

.method static synthetic access$13200()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1

    .line 1310
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearAction()V

    return-void
.end method

.method static synthetic access$13400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setGetDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeGetDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearGetDocument()V

    return-void
.end method

.method static synthetic access$13700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setListDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeListDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearListDocuments()V

    return-void
.end method

.method static synthetic access$14000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setCreateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeCreateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)V

    return-void
.end method

.method static synthetic access$14200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearCreateDocument()V

    return-void
.end method

.method static synthetic access$14300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setUpdateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeUpdateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearUpdateDocument()V

    return-void
.end method

.method static synthetic access$14600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setDeleteDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeDeleteDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V

    return-void
.end method

.method static synthetic access$14800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearDeleteDocument()V

    return-void
.end method

.method static synthetic access$14900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setBeginTransaction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeBeginTransaction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearBeginTransaction()V

    return-void
.end method

.method static synthetic access$15200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setCommit(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeCommit(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearCommit()V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setRollback(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeRollback(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearRollback()V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setListCollectionIds(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeListCollectionIds(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearListCollectionIds()V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setBatchGetDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeBatchGetDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearBatchGetDocuments()V

    return-void
.end method

.method static synthetic access$16400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setRunQuery(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeRunQuery(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearRunQuery()V

    return-void
.end method

.method static synthetic access$16700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V

    return-void
.end method

.method static synthetic access$16800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V

    return-void
.end method

.method static synthetic access$16900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearListen()V

    return-void
.end method

.method static synthetic access$17000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setRemoveListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V

    return-void
.end method

.method static synthetic access$17100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeRemoveListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V

    return-void
.end method

.method static synthetic access$17200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearRemoveListen()V

    return-void
.end method

.method static synthetic access$17300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setStatus(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeStatus(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V

    return-void
.end method

.method static synthetic access$17500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearStatus()V

    return-void
.end method

.method static synthetic access$17600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setDatabaseContentsBeforeAction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->mergeDatabaseContentsBeforeAction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V

    return-void
.end method

.method static synthetic access$17800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearDatabaseContentsBeforeAction()V

    return-void
.end method

.method static synthetic access$17900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 1310
    invoke-direct {p0, p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->setMatchingDocuments(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->addMatchingDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V

    return-void
.end method

.method static synthetic access$18100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 1310
    invoke-direct {p0, p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->addMatchingDocuments(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->addAllMatchingDocuments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 1310
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->clearMatchingDocuments()V

    return-void
.end method

.method static synthetic access$18400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .param p1, "x1"    # I

    .line 1310
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->removeMatchingDocuments(I)V

    return-void
.end method

.method private addAllMatchingDocuments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;",
            ">;)V"
        }
    .end annotation

    .line 8278
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;>;"
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->ensureMatchingDocumentsIsMutable()V

    .line 8279
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 8281
    return-void
.end method

.method private addMatchingDocuments(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 8265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8266
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->ensureMatchingDocumentsIsMutable()V

    .line 8267
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 8268
    return-void
.end method

.method private addMatchingDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 8252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8253
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->ensureMatchingDocumentsIsMutable()V

    .line 8254
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 8255
    return-void
.end method

.method private clearAction()V
    .locals 1

    .line 7340
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7342
    return-void
.end method

.method private clearBatchGetDocuments()V
    .locals 2

    .line 7838
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7839
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7842
    :cond_0
    return-void
.end method

.method private clearBeginTransaction()V
    .locals 2

    .line 7638
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 7639
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7642
    :cond_0
    return-void
.end method

.method private clearCommit()V
    .locals 2

    .line 7688
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7689
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7692
    :cond_0
    return-void
.end method

.method private clearCreateDocument()V
    .locals 2

    .line 7488
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7489
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7492
    :cond_0
    return-void
.end method

.method private clearDatabaseContentsBeforeAction()V
    .locals 1

    .line 8162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 8164
    return-void
.end method

.method private clearDeleteDocument()V
    .locals 2

    .line 7588
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 7589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7592
    :cond_0
    return-void
.end method

.method private clearGetDocument()V
    .locals 2

    .line 7388
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7389
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7392
    :cond_0
    return-void
.end method

.method private clearListCollectionIds()V
    .locals 2

    .line 7788
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 7789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7792
    :cond_0
    return-void
.end method

.method private clearListDocuments()V
    .locals 2

    .line 7438
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7439
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7442
    :cond_0
    return-void
.end method

.method private clearListen()V
    .locals 2

    .line 7938
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 7939
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7942
    :cond_0
    return-void
.end method

.method private clearMatchingDocuments()V
    .locals 1

    .line 8290
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8291
    return-void
.end method

.method private clearRemoveListen()V
    .locals 2

    .line 7988
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 7989
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7992
    :cond_0
    return-void
.end method

.method private clearRollback()V
    .locals 2

    .line 7738
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 7739
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7742
    :cond_0
    return-void
.end method

.method private clearRunQuery()V
    .locals 2

    .line 7888
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 7889
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7892
    :cond_0
    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 8086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 8088
    return-void
.end method

.method private clearUpdateDocument()V
    .locals 2

    .line 7538
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7539
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7542
    :cond_0
    return-void
.end method

.method private ensureMatchingDocumentsIsMutable()V
    .locals 2

    .line 8224
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8225
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8226
    nop

    .line 8227
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8229
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1

    .line 9459
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method private mergeBatchGetDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    .line 7824
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7825
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7826
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7827
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments$Builder;

    move-result-object v0

    .line 7828
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7830
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7832
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7833
    return-void
.end method

.method private mergeBeginTransaction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    .line 7624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7625
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7626
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7627
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;

    move-result-object v0

    .line 7628
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7630
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7632
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7633
    return-void
.end method

.method private mergeCommit(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    .line 7674
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7675
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7676
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7677
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;

    move-result-object v0

    .line 7678
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7680
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7682
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7683
    return-void
.end method

.method private mergeCreateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    .line 7474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7475
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7476
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7477
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument$Builder;

    move-result-object v0

    .line 7478
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7480
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7482
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7483
    return-void
.end method

.method private mergeDatabaseContentsBeforeAction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 2
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 8143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8144
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    if-eqz v0, :cond_0

    .line 8145
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8146
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 8147
    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    goto :goto_0

    .line 8149
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 8152
    :goto_0
    return-void
.end method

.method private mergeDeleteDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    .line 7574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7575
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7576
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7577
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;

    move-result-object v0

    .line 7578
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7580
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7582
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7583
    return-void
.end method

.method private mergeGetDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    .line 7374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7375
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7376
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7377
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;

    move-result-object v0

    .line 7378
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7380
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7382
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7383
    return-void
.end method

.method private mergeListCollectionIds(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    .line 7774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7775
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7776
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7777
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds$Builder;

    move-result-object v0

    .line 7778
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7780
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7782
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7783
    return-void
.end method

.method private mergeListDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    .line 7424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7425
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7426
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7427
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments$Builder;

    move-result-object v0

    .line 7428
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7430
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7432
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7433
    return-void
.end method

.method private mergeListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    .line 7924
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7925
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7926
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7927
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;

    move-result-object v0

    .line 7928
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7930
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7932
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7933
    return-void
.end method

.method private mergeRemoveListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    .line 7974
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7975
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7976
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7977
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;

    move-result-object v0

    .line 7978
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7980
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7982
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7983
    return-void
.end method

.method private mergeRollback(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    .line 7724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7725
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7726
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7727
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback$Builder;

    move-result-object v0

    .line 7728
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7730
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7732
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7733
    return-void
.end method

.method private mergeRunQuery(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 7874
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7875
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7876
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7877
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    move-result-object v0

    .line 7878
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7880
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7882
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7883
    return-void
.end method

.method private mergeStatus(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 8063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8064
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    if-eqz v0, :cond_0

    .line 8065
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8066
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 8067
    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    goto :goto_0

    .line 8069
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 8072
    :goto_0
    return-void
.end method

.method private mergeUpdateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)V
    .locals 3
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    .line 7524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7525
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7526
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7527
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument$Builder;

    move-result-object v0

    .line 7528
    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7530
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7532
    :goto_0
    iput v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7533
    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;
    .locals 1

    .line 8379
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    .line 8382
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8356
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8362
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8320
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8327
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8367
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8374
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8344
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8351
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8307
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8314
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8332
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8339
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;",
            ">;"
        }
    .end annotation

    .line 9465
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMatchingDocuments(I)V
    .locals 1
    .param p1, "index"    # I

    .line 8300
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->ensureMatchingDocumentsIsMutable()V

    .line 8301
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 8302
    return-void
.end method

.method private setBatchGetDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    .line 7816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7817
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7818
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7819
    return-void
.end method

.method private setBeginTransaction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    .line 7616
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7617
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7618
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7619
    return-void
.end method

.method private setCommit(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    .line 7666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7667
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7668
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7669
    return-void
.end method

.method private setCreateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    .line 7466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7467
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7468
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7469
    return-void
.end method

.method private setDatabaseContentsBeforeAction(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 8128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8129
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 8131
    return-void
.end method

.method private setDeleteDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    .line 7566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7567
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7568
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7569
    return-void
.end method

.method private setGetDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    .line 7366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7367
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7368
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7369
    return-void
.end method

.method private setListCollectionIds(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    .line 7766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7767
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7768
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7769
    return-void
.end method

.method private setListDocuments(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    .line 7416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7417
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7418
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7419
    return-void
.end method

.method private setListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    .line 7916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7917
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7918
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7919
    return-void
.end method

.method private setMatchingDocuments(ILcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 8240
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8241
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->ensureMatchingDocumentsIsMutable()V

    .line 8242
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8243
    return-void
.end method

.method private setRemoveListen(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    .line 7966
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7967
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7968
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7969
    return-void
.end method

.method private setRollback(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    .line 7716
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7717
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7718
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7719
    return-void
.end method

.method private setRunQuery(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 7866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7867
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7868
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7869
    return-void
.end method

.method private setStatus(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 8044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8045
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 8047
    return-void
.end method

.method private setUpdateDocument(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    .line 7516
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7517
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    .line 7518
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    .line 7519
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 9382
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 9443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9440
    :pswitch_0
    return-object v1

    .line 9437
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 9422
    :pswitch_2
    sget-object v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->PARSER:Lcom/google/protobuf/Parser;

    .line 9423
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;>;"
    if-nez v1, :cond_1

    .line 9424
    const-class v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    monitor-enter v2

    .line 9425
    :try_start_0
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 9426
    if-nez v1, :cond_0

    .line 9427
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 9430
    sput-object v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->PARSER:Lcom/google/protobuf/Parser;

    .line 9432
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9434
    :cond_1
    :goto_0
    return-object v1

    .line 9419
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    return-object v0

    .line 9390
    :pswitch_4
    const-string v1, "action_"

    const-string v2, "actionCase_"

    const-class v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    const-class v4, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    const-class v5, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    const-class v6, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    const-class v7, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    const-class v8, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    const-class v9, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    const-class v10, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    const-class v11, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    const-class v12, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    const-class v13, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    const-class v14, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    const-class v15, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    const-string v16, "status_"

    const-string v17, "databaseContentsBeforeAction_"

    const-string v18, "matchingDocuments_"

    const-class v19, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 9411
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0010\u0001\u0000\u0001\u00cb\u0010\u0000\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u00c9\t\u00ca\t\u00cb\u001b"

    .line 9415
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 9387
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 9384
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;-><init>()V

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

.method public getActionCase()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ActionCase;
    .locals 1

    .line 7335
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ActionCase;->forNumber(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getBatchGetDocuments()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;
    .locals 2

    .line 7807
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7808
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    return-object v0

    .line 7810
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BatchGetDocuments;

    move-result-object v0

    return-object v0
.end method

.method public getBeginTransaction()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;
    .locals 2

    .line 7607
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 7608
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    return-object v0

    .line 7610
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$BeginTransaction;

    move-result-object v0

    return-object v0
.end method

.method public getCommit()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;
    .locals 2

    .line 7657
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7658
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    return-object v0

    .line 7660
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Commit;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDocument()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;
    .locals 2

    .line 7457
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7458
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    return-object v0

    .line 7460
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$CreateDocument;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseContentsBeforeAction()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1

    .line 8116
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeleteDocument()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;
    .locals 2

    .line 7557
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 7558
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    return-object v0

    .line 7560
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    move-result-object v0

    return-object v0
.end method

.method public getGetDocument()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;
    .locals 2

    .line 7357
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7358
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    return-object v0

    .line 7360
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$GetDocument;

    move-result-object v0

    return-object v0
.end method

.method public getListCollectionIds()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;
    .locals 2

    .line 7757
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 7758
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    return-object v0

    .line 7760
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListCollectionIds;

    move-result-object v0

    return-object v0
.end method

.method public getListDocuments()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;
    .locals 2

    .line 7407
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7408
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    return-object v0

    .line 7410
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$ListDocuments;

    move-result-object v0

    return-object v0
.end method

.method public getListen()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;
    .locals 2

    .line 7907
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 7908
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    return-object v0

    .line 7910
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Listen;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingDocuments(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p1, "index"    # I

    .line 8210
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public getMatchingDocumentsCount()I
    .locals 1

    .line 8199
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMatchingDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;",
            ">;"
        }
    .end annotation

    .line 8177
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMatchingDocumentsOrBuilder(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocumentsOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 8221
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocumentsOrBuilder;

    return-object v0
.end method

.method public getMatchingDocumentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocumentsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8188
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->matchingDocuments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRemoveListen()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;
    .locals 2

    .line 7957
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 7958
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    return-object v0

    .line 7960
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    move-result-object v0

    return-object v0
.end method

.method public getRollback()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;
    .locals 2

    .line 7707
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 7708
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    return-object v0

    .line 7710
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$Rollback;

    move-result-object v0

    return-object v0
.end method

.method public getRunQuery()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 2

    .line 7857
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 7858
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0

    .line 7860
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1

    .line 8028
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpdateDocument()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;
    .locals 2

    .line 7507
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7508
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->action_:Ljava/lang/Object;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    return-object v0

    .line 7510
    :cond_0
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$UpdateDocument;

    move-result-object v0

    return-object v0
.end method

.method public hasBatchGetDocuments()Z
    .locals 2

    .line 7800
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBeginTransaction()Z
    .locals 2

    .line 7600
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCommit()Z
    .locals 2

    .line 7650
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCreateDocument()Z
    .locals 2

    .line 7450
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDatabaseContentsBeforeAction()Z
    .locals 1

    .line 8103
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->databaseContentsBeforeAction_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeleteDocument()Z
    .locals 2

    .line 7550
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGetDocument()Z
    .locals 2

    .line 7350
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasListCollectionIds()Z
    .locals 2

    .line 7750
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListDocuments()Z
    .locals 2

    .line 7400
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListen()Z
    .locals 2

    .line 7900
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoveListen()Z
    .locals 2

    .line 7950
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRollback()Z
    .locals 2

    .line 7700
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRunQuery()Z
    .locals 2

    .line 7850
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 8011
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->status_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateDocument()Z
    .locals 2

    .line 7500
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;->actionCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
