.class public Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;
.super Ljava/lang/Object;
.source "ConfigurablePriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "pPriority"    # I
    .param p2, "pName"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;->mPriority:I

    .line 16
    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;->mName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .line 21
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    .local v0, "thread":Ljava/lang/Thread;
    iget v1, p0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 23
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-object v0
.end method
