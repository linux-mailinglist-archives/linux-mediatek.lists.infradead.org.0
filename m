Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3194E31C2
	for <lists+linux-mediatek@lfdr.de>; Thu, 24 Oct 2019 14:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xg3fy/JrZVLkwKtWp8ABrbesGchEUSmKVmcHuF6Lgx8=; b=Wi51LqnSe5DMjg
	IiEFBwX7nmFXpqgMBflK1srk4WPV+zKfuKK/XQtS5klcspUNQfj5MaM2G2vU/Tj32A76fCjnNe9wN
	GE1/A1WI8gJAxw5+Ue8aXt+lYFUKvxGkOTi5gqNBRaK5BGnGs8OrvRzPwSeiCwPC1kxlLPp2KRAyz
	mFsOxaQqqj3bbfx+h8mjWn4MLSQetNlpIhLDP7iiPTukUamvHt+MfDqN9vvhsaOQ207aDrwkZutos
	uKaHHVZXh/FvHxJ9q1acVLWYPEYrOOWKlkrfkzqRjp+EwSh8dIKDuuI7AyW4PQc9+n+dLvf3Uo33B
	ba2aD66kCq9+JHN8ltCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbqi-0000SO-TD; Thu, 24 Oct 2019 12:04:16 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbqU-0000Iq-94
 for linux-mediatek@lists.infradead.org; Thu, 24 Oct 2019 12:04:03 +0000
Received: by mail-vs1-xe43.google.com with SMTP id l2so16013500vsr.8
 for <linux-mediatek@lists.infradead.org>; Thu, 24 Oct 2019 05:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yIHdRDSmrUwrFRgZT+l4aoJ5+wJfwLc1Gxo6qeqIHsA=;
 b=ACiWYYwSNj0go/Tl2/lQqg76/wKNHgtph1WZCkgwEJe+upDk/hj6BlpfFgn9+Bowg8
 jz152L6lXUVWJiTqirAUj9jqzvqB06NHvmV3RDhScyffS58ZGPFZzSI6c9B7jFP293S8
 jh38rJLqgSQWl/oXaLYtseJ1zWtZhTuVLL9uK4dWuP8jpSN7xzM0vS5EelSPDkwDmp6p
 nxMu6fAJYoE5Djc8CPllGbBwznEYsqk8sA1l+Fcbw+fynz7uA0UBRAAHptjGXDTqLlVr
 Dt09fWR5mLgf9rPKJO0+C40g9KFUwEXUSTolAIDb7FkdpSQKkUP3vvqM3/ZfvVhwk0CI
 QsNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yIHdRDSmrUwrFRgZT+l4aoJ5+wJfwLc1Gxo6qeqIHsA=;
 b=hz8+GgL8nY3818oYyC9zPcRladLXgb3qwNU86BFE/Tv/L6+wIGSf3L0HZ7jX8hy8oQ
 vNlAmtEhhGEGVVGfygq+DX2uFBfi8nBlE6x0LGxIiDr23Vwt53SQX3VxgzwaUi1+3fGd
 SHti5D/7rfOYdrE5NoeMHfS47YLbzpQsHL7zEFehAfESSUiHp7XmOt9Fdg9tC8Z3313j
 qk0IiQ4L2xLVC4hjAcPacYARi8bFY2BXFKHR/5SZPIMS4v1jCWGkCOSv38sqAcnbamVv
 5inm2tSrDs5QUAMsPySVR8sZQAVUEp5pBRQY4QiZT7eW2eWGrtASy+sg9z/xFSYj5Pwz
 uTbg==
X-Gm-Message-State: APjAAAV9cUdBTHQsX8PvlMvdsuoaU/8s7+JtYI+vcbw/CrifaZpmnB0t
 Jbvl+xfDGs1/QGVo8wXTLrP57f+QoRBTXSFEAo7Q6w==
X-Google-Smtp-Source: APXvYqy2tjNnWaUw1UPJsxMKldXvGJ+Z5Kl6+j0vYrUnvZIiztW/IstiPyKsEf34lEfaQ1dY5ztUXc9J76ibMzre49o=
X-Received: by 2002:a67:edd6:: with SMTP id e22mr8357905vsp.84.1571918640462; 
 Thu, 24 Oct 2019 05:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191016141053.23740-1-yuehaibing@huawei.com>
In-Reply-To: <20191016141053.23740-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Oct 2019 14:03:48 +0200
Message-ID: <CACRpkdZFmXBs8fUnq5hiQ-=RELKM_L+mN4Sy+wWkDTwJb3sPgA@mail.gmail.com>
Subject: Re: [PATCH -next] pinctrl: mediatek: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_050402_331403_E83A41B4 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 4:11 PM YueHaibing <yuehaibing@huawei.com> wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
