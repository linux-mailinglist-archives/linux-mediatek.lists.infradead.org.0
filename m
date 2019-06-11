Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4813C7B1
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 11:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oeWCqMDx7pyxf2vp8bo6Q8FeqLTDBVHqJijOEFXrdw=; b=NFyr4+mt1VsfKM
	rNnbekjOADQ5T9bCcfi2fK0OueYTfhvwiH5qKafmoCXI4l+KI9DOyBwPzAxYbaxkLln292GEPxYO4
	ZL9Rbj5dCLWMzciEh1CgVXoNzWOJNnhUAVzBbTgXsIESeSsGK2a1uzrQ3OA1kZHtunhCcz8mMt2R5
	fkU2DMQIEMTNzHNqkI5G5aqj7NwA7p4hm58l1QWGmflLJUrc5qA3v+gvC1ltrRe8z11MkpQY2jw5z
	HuDXjG1d8hbyHG9ETzreUh3zYe+DcEeayVY2VQiUnr02LklsdIiAZ9NGeHBsWwzB0YR29rYxrjwhF
	w1BXlGuSDhKv4lkv+Teg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadTo-0002go-B2; Tue, 11 Jun 2019 09:54:12 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadTk-0002gE-SS
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 09:54:10 +0000
Received: by mail-qk1-x743.google.com with SMTP id c11so7209735qkk.8
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 02:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+38Lbr9rNUhSKar2BeR7VlIqBZLydDsxiHIDtpA/c3A=;
 b=Z4JEhv0f3lRlQOqp16GGJPy7vo+ohK7tFrcMiCjMmz3xt4glhA5S+gKoiZ10q4U7Gq
 kUj80uBjld/wT8KgyE/nkAdzUVxWtd1fMxSeJF/zhLirggcLf1bzM0qSEv4PyfNfF4WQ
 yjnvzv8OZ2q6+VPAPB99Q+99/573fTz64YGzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+38Lbr9rNUhSKar2BeR7VlIqBZLydDsxiHIDtpA/c3A=;
 b=L5VL0pnXsf0djKS6J25Mu7SvEZiMGn86ZNBB9cUFPQ1S4q0IGktGL0/+bOn2JTWqT2
 o1TD/qpczlnMkJaidEiD69GYE2q6eyLU198A3Z8q6FG8iNGmLHYyjOBdXR1oeWtKKKwP
 iXK5TLYijcKZfe/OPjAtqPgZ5TazCHR0KP9aDvf1brNXsBTmRG1JQmz77WiZMudY9ldO
 FKc8Q2ILrQHtyFHBGeP1NHKWKZMUPkOC/uB9TjQDlZmguQF3v696W/69P+OoZn9oUKcJ
 TtL64R4nfB/IVD1id2InnPl79qXTPKQ1Z31jtw3cG4wyx2vxW4V+Ibx3ZyWneSUpr90r
 U0xw==
X-Gm-Message-State: APjAAAUD6aXZN50mkVvAi6f53TArilhAkWUSx94/c+1Mtk7mJi54NzIX
 6v0AgVfsG5lrK8gs9bAXhvtTtHKcOPI=
X-Google-Smtp-Source: APXvYqw4Nz0aZxR5pRmD/rlSdSie4kkf7z66ChEo3adCND6iW2agW7P05ZgTYmJisUiW1gJZ9lnEaQ==
X-Received: by 2002:a05:620a:51:: with SMTP id
 t17mr60153664qkt.149.1560246846700; 
 Tue, 11 Jun 2019 02:54:06 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com.
 [209.85.160.180])
 by smtp.gmail.com with ESMTPSA id r39sm7519065qtc.87.2019.06.11.02.54.05
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 02:54:05 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id s15so13707942qtk.9
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 02:54:05 -0700 (PDT)
X-Received: by 2002:ac8:28e2:: with SMTP id j31mr23670135qtj.274.1560246845373; 
 Tue, 11 Jun 2019 02:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083150.220194-1-tientzu@chromium.org>
 <20190527083150.220194-2-tientzu@chromium.org>
In-Reply-To: <20190527083150.220194-2-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 11 Jun 2019 17:53:54 +0800
X-Gmail-Original-Message-ID: <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
Message-ID: <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: add documentation for Rx
 in-band wakeup support
To: gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025408_940523_427CD1AA 
X-CRM114-Status: UNSURE (   5.83  )
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

(cc-ed device tree maintainers and mailing list)

The second patch in this series[1] is already in tty-next[2].

Sorry for not cc-ing device tree maintainers/mailing list at the beginning.
I can resend this patch if needed.

Thanks.

[1] https://patchwork.kernel.org/patch/10962299/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/log/?h=tty-testing

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
