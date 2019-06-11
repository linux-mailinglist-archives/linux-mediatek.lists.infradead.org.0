Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513A53CAFB
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 14:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBX5PrGXmQdC8gCCjIc45uN5XjmPiMI21FjfS7LKv+8=; b=Z7PBIUvxn8m72S
	t0RGT4K4xQw6N/9USYJ8+DaICDv86Y7c6TP4hG0geBuf0mVYYRDhoaYPAkJYQNQ/ZH6Q9Jk+cFC89
	ldEgD8QAR18yooO1Yzb9KM0FhNNJE5/R/lHxt/oomSlFZqm+ifzar0TPrjGFzEvTrqmrEBhBMzmwR
	IG8TvKRO2u6aoLSzTLOq4y4VvtyJNyXAxKreUjLyil3gZn9rM8rpv0RS/6ZrD+5EizLaemNT7lwLi
	j+FCY8wBiVDucqwTEs9KQDTQseHvDuwWVfZ8+HmaoDPQnk91CmBWhcNtartG+YaUCm62FZ20SzD0R
	xZ/FRyp78nvH+79ev92A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafjH-0005tL-OP; Tue, 11 Jun 2019 12:18:19 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafjD-0005sa-R8
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 12:18:17 +0000
Received: by mail-qk1-x743.google.com with SMTP id b18so7446523qkc.9
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 05:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g5i49l4VfJcEzoWbFwIf3HpGCD6+/0Z2WJ63n1g5Dzs=;
 b=lHy7l5iuNJJVbYGg8Pr0qdGaYDIgmTC+o3rhUwXxq6E9ILKH7VCOaCqdgmCNguSS67
 vt8hDhDUDyKbztEdmsIKJkY9vPCRWlvo1bCPp2rQMKZ5aUd8ySk5+c8Jxu5mnklh0jCI
 P+S51JBU0KBY570Wejx5bk/w9W8LJJO1ipYAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g5i49l4VfJcEzoWbFwIf3HpGCD6+/0Z2WJ63n1g5Dzs=;
 b=pSPft/KWjEcaav5LMJ/Di1gpE4iJB+STJwY91TnkNpAepxEY9GxwTKzn5v+u4Nb9YQ
 ImS5xJWXd+gwYL0Cuv1JTza7AnkCnTLN0TzkWHGDhm26AwKgesMmqfff4Yn3kfkGjJCr
 rlWuMIaHDgH/e6zo5b6yHEdR9R5+bDAnxZck1lRGJ17cVB4zUYjepnebbM1pFnmGENIn
 LDK3+hd9PXUpEPTWu7Us/Ur+mnQaA+tr6VoL6vIxecY3sUXb4VZ3yZZAzSfSBD0QOLpv
 +G6SsNKZTLiGDqIKPZTzLMa98IfYMKW1ISuG8PhZIOsIpwvfrNsMReEre0ZwsViZETyn
 5F1w==
X-Gm-Message-State: APjAAAXNNotEpJoCYYvyR009VSXT/hNtSbM2J1n1sg4nCaY3G9MjziEZ
 CG4Yc4+Ywm4ymlZjsZKAh2DXToIucEA=
X-Google-Smtp-Source: APXvYqzvqNg4Y+wCGQVtMOAAM7oxl+IDlb4Axs22b8A/I3sL6tv2/uUrLEjr4mbOwhRoPjcRYJOBWw==
X-Received: by 2002:a37:e10e:: with SMTP id c14mr42004771qkm.54.1560255493593; 
 Tue, 11 Jun 2019 05:18:13 -0700 (PDT)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com.
 [209.85.160.176])
 by smtp.gmail.com with ESMTPSA id u19sm1719307qka.35.2019.06.11.05.18.11
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 05:18:11 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id i34so14174048qta.6
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 05:18:11 -0700 (PDT)
X-Received: by 2002:ac8:7346:: with SMTP id q6mr46465019qtp.380.1560255491256; 
 Tue, 11 Jun 2019 05:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083150.220194-1-tientzu@chromium.org>
 <20190527083150.220194-2-tientzu@chromium.org>
 <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
 <20190611095752.GA24058@kroah.com>
In-Reply-To: <20190611095752.GA24058@kroah.com>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 11 Jun 2019 20:17:59 +0800
X-Gmail-Original-Message-ID: <CALiNf2-79LEg+dvSqQK8kVkf99ARLwy9uLCmJNgq-vJO9r0a9g@mail.gmail.com>
Message-ID: <CALiNf2-79LEg+dvSqQK8kVkf99ARLwy9uLCmJNgq-vJO9r0a9g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: add documentation for Rx
 in-band wakeup support
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_051815_907072_5A06657E 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, changqi.hu@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

resent here: https://patchwork.ozlabs.org/patch/1113768/
sorry for the inconvenience

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
