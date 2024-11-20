.class public final Lcom/google/firebase/components/Qualified;
.super Ljava/lang/Object;
.source "Qualified.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/Qualified$Unqualified;
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
.field private final qualifier:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    .local p1, "qualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    .line 28
    iput-object p2, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public static qualified(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "qualifier":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/firebase/components/Qualified;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;"
        }
    .end annotation

    .line 32
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/firebase/components/Qualified;

    const-class v1, Lcom/google/firebase/components/Qualified$Unqualified;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/components/Qualified;

    .line 46
    .local v1, "qualified":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    iget-object v2, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    iget-object v3, v1, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 42
    .end local v1    # "qualified":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 52
    .local p0, "this":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 53
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 54
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    .local p0, "this":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    const-class v1, Lcom/google/firebase/components/Qualified$Unqualified;

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
