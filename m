Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866C119554F
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Mar 2020 11:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgmCEJ4tw16dCxLgz3kv5wBJWQnmU54rsGkfEj4C/mA=; b=Hm0TYxnt4L5+qd
	j1IbqOKHV89Rg7bonAF2P19UeiTKNHHdSXMZlYNGZcd5ngcT+YFyPh6dYaH3FiAVzcWMPAJy249W4
	WzRUre2cPUkQT5+BhixOfFd42Op1cZWc+WBqJHFl5vGAS25JyRqUHImYx8lcoS2T6Lv3/0DS1Eo6x
	4fJBx9tWkVFE3nguCaNWP2i+xNwsO3gugI7Q4sZGa9zNiTNRA629owe1t5sXsMbJxcW1oU1/Ar38C
	WrMktkliFPWKGQe05f06u0/v25YF2OwoJhP+T7rPsyvN23oz8QaO7ewhjHjkJbjJHJ9Rjno7ntFD5
	1uMNjshvDFUe9hPG4VaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmGj-0004m4-Kq; Fri, 27 Mar 2020 10:31:17 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmGh-0004li-GG
 for linux-mediatek@lists.infradead.org; Fri, 27 Mar 2020 10:31:16 +0000
Received: by mail-lj1-x242.google.com with SMTP id n17so9628901lji.8
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Mar 2020 03:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y9GPFegNFppAtG8VfOK1hzN6DX1neujiFhmSroslZ3A=;
 b=v8SnBAISUhe4O2X68nvq2mTQ4IESHbhhK/DdVTGF6QQpxj+HBRN/yyyodYhymC+PzS
 JAFdSEC2fpQdWWwymmeF4F7Gv6hDx0LMnRAoHX2Hv/10PnazJ3ZE2H5l++8BZLS7G864
 MDArlHjA1tW1RQcDzi8mNdDB6rwpORj2r3S1sxgesBj3TttPQBwKjY6oDCQRmwRnomHt
 T+5YUciUeMpRSj/VsI0hGrOMhNfaVUdroln9DIKVTKn7ACGvcu+rQF/w6717o6nKyw7s
 +K1ZRkdSA3UaQo5WtepoU2x8h1WD6bBW87YeTPBJPZ/8OeN/4SKFC77CrK09NYv4o46P
 2tYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y9GPFegNFppAtG8VfOK1hzN6DX1neujiFhmSroslZ3A=;
 b=TNTS2tAtyzkCi4e8zYmjTSQ7pqVEa8AbsFrbH8P+DlI7XsInvZVR/hgVTO2kfOJNXn
 KKPlzCt1FFvi5bowFMkisM+RC23lL1Sl+YmVJ0JjwXS8SkP48Q1WYt34Dkd/Wz/4UTaW
 uNZdN231LH3hglee/W25BTyJr0ywH9zCsMOMgs6/fxF7pOrzPMe+xooFBycWe4C0jU1A
 cTgDbAWRec4E5crL3CTRhVWw3sJLFf7dIcx23p93xbueOIlL6htMpFhyrdviIz3XdcmF
 rDkwEFdSmRVpVanDiABIM5lAbQYarE5rAzjp/nNQ9t16UyU8D1sgMo8fdpVHq3IK1Ym0
 3g6g==
X-Gm-Message-State: ANhLgQ0ViC0H/LhAF8hS+vbCh6Egqi5uQ3qCYtmyo12qpi0ThO6FH2Jl
 ivLfUwG8xfTRcFQlYu38c0D0LG6CSJleiXB4Z+BQZA==
X-Google-Smtp-Source: ADFU+vvzNuB6yrUNJcqv0peX2lxUzuEUOGbmXMaFpa4JyDohIZuKl0tKEbyR5jYlOofIttkCHl7I8ntnC39UZAJQJd4=
X-Received: by 2002:a05:651c:445:: with SMTP id
 g5mr7734981ljg.125.1585305074115; 
 Fri, 27 Mar 2020 03:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200311090644.20287-1-tiwai@suse.de>
In-Reply-To: <20200311090644.20287-1-tiwai@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 11:31:03 +0100
Message-ID: <CACRpkdYBQ4tqy8Ji6rMwkAjOyx9zZFb-CYyYdLAfkDg3c+iPTw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: mediatek: Use scnprintf() for avoiding potential
 buffer overflow
To: Takashi Iwai <tiwai@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_033115_556227_07789610 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 10:06 AM Takashi Iwai <tiwai@suse.de> wrote:

> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().
>
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

No reaction from maintainers so patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
