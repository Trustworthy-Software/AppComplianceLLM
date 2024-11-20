.class Lio/grpc/internal/ApplicationThreadDeframerListener$2;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframerListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ApplicationThreadDeframerListener;->deframerClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframerListener;

.field final synthetic val$hasPartialMessage:Z


# direct methods
.method constructor <init>(Lio/grpc/internal/ApplicationThreadDeframerListener;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ApplicationThreadDeframerListener;

    .line 71
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframerListener$2;->this$0:Lio/grpc/internal/ApplicationThreadDeframerListener;

    iput-boolean p2, p0, Lio/grpc/internal/ApplicationThreadDeframerListener$2;->val$hasPartialMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener$2;->this$0:Lio/grpc/internal/ApplicationThreadDeframerListener;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframerListener;->access$000(Lio/grpc/internal/ApplicationThreadDeframerListener;)Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/internal/ApplicationThreadDeframerListener$2;->val$hasPartialMessage:Z

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->deframerClosed(Z)V

    .line 75
    return-void
.end method
