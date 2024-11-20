.class Lio/grpc/internal/MessageDeframer$SingleMessageProducer;
.super Ljava/lang/Object;
.source "MessageDeframer.java"

# interfaces
.implements Lio/grpc/internal/StreamListener$MessageProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleMessageProducer"
.end annotation


# instance fields
.field private message:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "message"    # Ljava/io/InputStream;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lio/grpc/internal/MessageDeframer$SingleMessageProducer;->message:Ljava/io/InputStream;

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lio/grpc/internal/MessageDeframer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lio/grpc/internal/MessageDeframer$1;

    .line 527
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageDeframer$SingleMessageProducer;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/io/InputStream;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 537
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SingleMessageProducer;->message:Ljava/io/InputStream;

    .line 538
    .local v0, "messageToReturn":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer$SingleMessageProducer;->message:Ljava/io/InputStream;

    .line 539
    return-object v0
.end method
