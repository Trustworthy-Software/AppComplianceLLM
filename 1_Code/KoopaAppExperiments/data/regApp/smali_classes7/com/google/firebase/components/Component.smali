.class public final Lcom/google/firebase/components/Component;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/Component$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/google/firebase/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final instantiation:I

.field private final name:Ljava/lang/String;

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "instantiation"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Dependency;",
            ">;II",
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    .local p2, "providedInterfaces":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/Qualified<-TT;>;>;"
    .local p3, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/Dependency;>;"
    .local p6, "factory":Lcom/google/firebase/components/ComponentFactory;, "Lcom/google/firebase/components/ComponentFactory<TT;>;"
    .local p7, "publishedEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/firebase/components/Component;->name:Ljava/lang/String;

    .line 99
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    .line 100
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    .line 101
    iput p4, p0, Lcom/google/firebase/components/Component;->instantiation:I

    .line 102
    iput p5, p0, Lcom/google/firebase/components/Component;->type:I

    .line 103
    iput-object p6, p0, Lcom/google/firebase/components/Component;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 104
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;Lcom/google/firebase/components/Component$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Ljava/util/Set;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/google/firebase/components/ComponentFactory;
    .param p7, "x6"    # Ljava/util/Set;
    .param p8, "x7"    # Lcom/google/firebase/components/Component$1;

    .line 37
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/components/Component;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V

    return-void
.end method

.method public static builder(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 207
    .local p0, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/firebase/components/Qualified;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static varargs builder(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;[",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 214
    .local p0, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    .local p1, "additionalInterfaces":[Lcom/google/firebase/components/Qualified;, "[Lcom/google/firebase/components/Qualified<-TT;>;"
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 195
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static varargs builder(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 202
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "additionalInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<-TT;>;"
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static intoSet(Ljava/lang/Object;Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .line 278
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Component;->intoSetBuilder(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public static intoSet(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .line 268
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/components/Component;->intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public static intoSetBuilder(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 258
    .local p0, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/components/Component$Builder;->access$200(Lcom/google/firebase/components/Component$Builder;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 248
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/components/Component$Builder;->access$200(Lcom/google/firebase/components/Component$Builder;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$intoSet$3(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "c"    # Lcom/google/firebase/components/ComponentContainer;

    .line 268
    return-object p0
.end method

.method static synthetic lambda$intoSet$4(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "c"    # Lcom/google/firebase/components/ComponentContainer;

    .line 278
    return-object p0
.end method

.method static synthetic lambda$of$0(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "args"    # Lcom/google/firebase/components/ComponentContainer;

    .line 224
    return-object p0
.end method

.method static synthetic lambda$of$1(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "args"    # Lcom/google/firebase/components/ComponentContainer;

    .line 231
    return-object p0
.end method

.method static synthetic lambda$of$2(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "args"    # Lcom/google/firebase/components/ComponentContainer;

    .line 238
    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/firebase/components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;[",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;)",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 238
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    .local p2, "additionalInterfaces":[Lcom/google/firebase/components/Qualified;, "[Lcom/google/firebase/components/Qualified<-TT;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/components/Component;->builder(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 231
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "additionalInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<-TT;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Dependency;",
            ">;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method public getFactory()Lcom/google/firebase/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component;->factory:Lcom/google/firebase/components/ComponentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvidedInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Qualified<",
            "-TT;>;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getPublishedEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    return-object v0
.end method

.method public isAlwaysEager()Z
    .locals 2

    .line 155
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget v0, p0, Lcom/google/firebase/components/Component;->instantiation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEagerInDefaultApp()Z
    .locals 2

    .line 164
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget v0, p0, Lcom/google/firebase/components/Component;->instantiation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLazy()Z
    .locals 1

    .line 146
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget v0, p0, Lcom/google/firebase/components/Component;->instantiation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValue()Z
    .locals 1

    .line 169
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    iget v0, p0, Lcom/google/firebase/components/Component;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    .line 182
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/components/Component;->instantiation:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/components/Component;->type:I

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    .line 188
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFactory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<TT;>;"
    .local p1, "factory":Lcom/google/firebase/components/ComponentFactory;, "Lcom/google/firebase/components/ComponentFactory<TT;>;"
    new-instance v8, Lcom/google/firebase/components/Component;

    iget-object v1, p0, Lcom/google/firebase/components/Component;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    iget v4, p0, Lcom/google/firebase/components/Component;->instantiation:I

    iget v5, p0, Lcom/google/firebase/components/Component;->type:I

    iget-object v7, p0, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/components/Component;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V

    return-object v8
.end method
