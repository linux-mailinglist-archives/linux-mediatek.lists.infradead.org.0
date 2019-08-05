Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2777C82022
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 17:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jA9I/iIVu9rMox72vmTpHxNftkckxQBhkkzVtaiIDXI=; b=mUbF9FbxjQVrX5
	5xzPjrOSZzXPSGUwft1WOvpSTyQB8vGhaEwnUSte4DKBiCX70AOBXfMVH3qbDvFCLNsvT97R+CDuf
	EPjV+l084gC4NVz585Zm0Mee4YI2WHT+gkVjvu6eDcmlaQk7extSRS7IRWqDjDAFszhXfW2LWL8cD
	maQ9X5TOD2J4fegkS6eKW+ugiBlJiJbZdPbXNrClfLNxuIpaiRBzKWjBsIZHaTteQP8nBsfsc1WY2
	d15fKzjM7oAQTczLS+mrRdCzu6XKtYNG62rpzDx2Xw3s1otoBie2tr6PqRmSFd9zUkrdyzx5PHM4j
	PWMKi45W/2GS6deiqlfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hueut-0007CL-3z; Mon, 05 Aug 2019 15:28:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueuq-0007C1-70
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 15:28:53 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C24A920B1F
 for <linux-mediatek@lists.infradead.org>; Mon,  5 Aug 2019 15:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565018931;
 bh=0OjQ8Rdqqx/BilDZyvjG6A1sMxbSpqh2cWddJ5gCTxA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=duH8pakwY9L3UpmLFj+tYRNB3e7+ek2sgh5AF5PT5QSI8PBN8JrF0qXVWWeMY1BDe
 7mqSzPL5PD4GdydB6QAzZzpuSBs5cO1fO0uxjV8epriAov44a/pr3add+zRHl66KhT
 XdxMbB9sU+JatZfB9FIvfHysQTOXsb4WWsz+o8N8=
Received: by mail-qt1-f181.google.com with SMTP id x22so7925824qtp.12
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 08:28:51 -0700 (PDT)
X-Gm-Message-State: APjAAAVf1kpfzA+79km0MB0oug+DDSJzq4QjtE3bdJnANInphh0s/QGG
 ofM0rxSAoqrm6LazRF//9uov+jA3wHII9zy7mA==
X-Google-Smtp-Source: APXvYqx9Mp339aOHnb56VlztmeVuv2F5K0wvgS8FCwqrBT+3li2+QntQXhNvXx3cWwoB15jWc/TREdIJGl2K2FIijfw=
X-Received: by 2002:ac8:368a:: with SMTP id
 a10mr107432491qtc.143.1565018931042; 
 Mon, 05 Aug 2019 08:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
 <1564996320-10897-2-git-send-email-mars.cheng@mediatek.com>
In-Reply-To: <1564996320-10897-2-git-send-email-mars.cheng@mediatek.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 5 Aug 2019 09:28:39 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+5jydeN83BU+Ne+6muv7KWjceJrAApaOXYevLmUJh6qw@mail.gmail.com>
Message-ID: <CAL_Jsq+5jydeN83BU+Ne+6muv7KWjceJrAApaOXYevLmUJh6qw@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: mediatek: add support for mt6779
 reference board
To: Mars Cheng <mars.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_082852_270940_9CC20467 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wendell Lin <wendell.lin@mediatek.com>, Ivan Tseng <ivan.tseng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 3:13 AM Mars Cheng <mars.cheng@mediatek.com> wrote:
>
> Update binding document for mt6779 reference board
>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> ---
>  .../devicetree/bindings/arm/mediatek.yaml          |    4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
