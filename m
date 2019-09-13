Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42CFB1DD1
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Sep 2019 14:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TRXkUf3Cc4j/bNfQpamG2Kj2lzrfS8KDeQQEKLZw5w=; b=R9y749WKUGIeLg
	DnRt+zVgvJ0HNzMZ5KPQwPpIkz6WQ15p67j1YmKIk3+qKXPgcLR7vMs4T3oU+OkbB5Ma9iApra+2d
	78maTFo6CIRWWaN3quTOHWxgUGfdiSrUm65iHGFQMMU8wD4udfmITdqeWPIXfE7u05QJ8c0LxFhFX
	korcum1N9sRn2IMN3o9fFZM09d3lAc15F6oZxbOSQYawJtZdngJyM5hwiCIWw9yqr8AZekzkqs1W2
	veBlCxoZQETHysJlQyRHKORW9otasrUxnY07cIZ+MNxuofvk7rJoAD+hkCRSj7+d4E8JovOWIzs0V
	vyFD1GRpeUY/gGzaDDbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ksR-0001h1-Lm; Fri, 13 Sep 2019 12:40:39 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ksL-0001gi-13
 for linux-mediatek@lists.infradead.org; Fri, 13 Sep 2019 12:40:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id r2so3981845lfn.8
 for <linux-mediatek@lists.infradead.org>; Fri, 13 Sep 2019 05:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ft1I1EhDI1L0SLNIAxqP/sRjQ+TDSkpzKaCR7f/5tTQ=;
 b=DhJ0J0+esdIXuLHa2dKyB3ccBOpjg13waz6LGkvKMrCNjiOg9XY2WXNAKAOHtFzbPM
 gMDd9ktyt4l4LSdETLZnNtnLXzt5iIrFgpi+g0lELJRFi06i1Hxofhu3N/QsSZ/+3p7R
 8Uppb1VhjVGnr9ycEQo+FdWI4CaAaeHorHF8U6Ei8GA9sKbyd5ikMo6eixRv7ORk/8j0
 rlO/VSaeocmEmT2TAIn1g8JUkzILeCap1hJZT8vRcgwYkRKQTU+crYH4He9STSmauPo0
 kXpR96kXUEg9ew0hPHjoD3wMCKI+og9JdzoxVYXW8ktU4rxcx62/x8ZhlU0cxL35z3Me
 Qt3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ft1I1EhDI1L0SLNIAxqP/sRjQ+TDSkpzKaCR7f/5tTQ=;
 b=CsSSf9DjqDQvaMy99Ar7PBAtoZjHXwFBD3mzkMnWOHDl1l9vut/GNH1rMf77PlUD0P
 Lb7oZEx+bhNEdyWYxKQo9Suj6l+ECPg2uhO6otBhiopz4xmEqc3lHb7TvTQzg6w47Yvv
 FD7WU94sbx1CGVbujsGGQCKU40dM/EktjKOM8tvHShNto6xpcycKgd6ARFnkt6YpbyDe
 hIiwIIvDiJetomV0ZWHOZKSuK+GLZxLI4lLvE2LWglbReZZzO7UlS2x3U2AoiqBQJVH1
 VmQdMVFv6SqnlSr2tnlh2eXp3FkGNVX1yB9lziwsV8iWZ8fflPd5rJN5ELVMPI8hdmPr
 Bbdg==
X-Gm-Message-State: APjAAAXyoDgHiGu86z3YoUE2o5DI6hJlmg4uypP2qLc6WcKqQ9Y3tcO7
 FrATae+nF5vKlyBnk4D0ECU023DIdkgghi7zoXbEyw==
X-Google-Smtp-Source: APXvYqxZTmRAR02Om/GqFM9es0KUGaifiZo59JD20QRZ1o6rbYRiJs1AArPBBL1PDYlmiWlPOBvJn8GEoQUhxS+kdlM=
X-Received: by 2002:a19:117:: with SMTP id 23mr31578340lfb.115.1568378430947; 
 Fri, 13 Sep 2019 05:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <1567662796-25508-1-git-send-email-light.hsieh@mediatek.com>
 <1567663210.1324.3.camel@mtkswgap22>
 <CACRpkdbBMiHk4DV3r=aLU+T+9bPQBLUiTaW6L+L=J=ec0guBmA@mail.gmail.com>
In-Reply-To: <CACRpkdbBMiHk4DV3r=aLU+T+9bPQBLUiTaW6L+L=J=ec0guBmA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Sep 2019 14:40:19 +0200
Message-ID: <CACRpkdZSAMmiZ6thznAR3GFSw170fV5d2=VLrs63O41ZE+x+oA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_054033_082656_B92A7745 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 3:43 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Thu, Sep 5, 2019 at 7:00 AM Light Hsieh <light.hsieh@mediatek.com> wrote:
>
> > v2 is the same as v1 except that commit message is corrected according
> > to Linus' comment for v1:
> >
> > 1. remove Change-Id lines
> > 2. correct sysfs as debugfs
>
> Patches applied with Sean's ACK.

Pulled all patches out again because they don't compile. No big deal,
let's just rebase and fix it up,

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
