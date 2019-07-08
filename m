Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F4061D82
	for <lists+linux-mediatek@lfdr.de>; Mon,  8 Jul 2019 13:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sXDy6cjTk4GtrKDmhMj2YIZ4bCHdJ96Dxg67rMeDWM=; b=YuACH9/Hkot6Br
	yjpee+M7TG9yz1PI3wqWoaYBs8MA2INBgtb5WGbpLcwsuS3UKBWL2V9TOmkPKZn4BC3SDGz8O7Vsq
	H4XHGrSu3t7pv18xayNMgLb9KSUa+ePeeaxliTwG4YBR+PK4sm1ouyMpX++yuJclwFzzxyw74W0Q6
	3SkSi2LgZxjFV2bZX4BVOSKF4zAect70d0AKRy//RedWnU0x1CQJZEqhSVc9RcTH1S/HA0opMPJXd
	LSIqeuD+Lqdt9QMrR4OTxf9oMtbeEQfWU6IElfB5+Jz5Rg4UbFMkNFSCQAcypfKO0LnTivGhQwZ7s
	vBCodBrf9+5PfFSC7q8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRS6-0001Sb-Ic; Mon, 08 Jul 2019 11:04:58 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRS3-0001Rz-3p
 for linux-mediatek@lists.infradead.org; Mon, 08 Jul 2019 11:04:56 +0000
Received: by mail-qk1-x72a.google.com with SMTP id g18so12904846qkl.3
 for <linux-mediatek@lists.infradead.org>; Mon, 08 Jul 2019 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kp23LTJPz/eUy3KAi5g/b/CIcmzamMaEiPQ+c6HxoVY=;
 b=aeq6msnujeCPEJK27xnUjHXSK62m4D7EGwLjU8EGYyVz6AOw/ZP7U520jWvbZmHEu3
 0FIKMnXbYvjtr4rNp59X3BAizblCKThkp7GKtSwxVtJmxxQX8KSPdRAtpVAVxFmaAv2G
 itGjNu0/5DYeUnuDPGBD5txKuzcon7yKPHLKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kp23LTJPz/eUy3KAi5g/b/CIcmzamMaEiPQ+c6HxoVY=;
 b=YjMIXrgFJ9xmG9YAXu6Brv2vHSjrfBUcBOL4f5tYRVcKt6Xbr50WRIw1TtFiUm7Cns
 Ur0mMVO7EziWUb8eEiiMxy4Ln/UpEDPmp325C4hdY1o1Lnw+9imuqos6FjJpWJgy+42F
 3/e/NZc0NHtojVmmLtamJLpQB6zuyPq6DjUG4S8zaWKkSyfmtt4Wh1QsWK4PwCOm+iSK
 V8O1hOmQJSzKJct+fJZ5jZLoiqFzHkKHfzfW0MxxVVSaHZLYMBR2aqrNeGNUTfeh3zIw
 6js+jNSU3GMcDFepfc+3/3hTWVPmMQK/V53nAZjXqKri5u+vnbXpfDawo5C6dNB5jKM5
 jvow==
X-Gm-Message-State: APjAAAVbpFObpvrXD414GzG5dMW/z4qTKzZWliH5OqmMmw1wXVWOKRXO
 dfCp680/BYCGHNw8n4g4RTdUCD75izk=
X-Google-Smtp-Source: APXvYqzDJAU63ibQTMyHiN9oEoj8jNBuil2NjUo0DpAwbjS1gbViE9S8El9+2lyc/HHnNO3J/nvxig==
X-Received: by 2002:a37:9a97:: with SMTP id
 c145mr14036220qke.309.1562583893112; 
 Mon, 08 Jul 2019 04:04:53 -0700 (PDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com.
 [209.85.160.182])
 by smtp.gmail.com with ESMTPSA id 2sm8069218qtz.73.2019.07.08.04.04.51
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 04:04:52 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id k10so9921123qtq.1
 for <linux-mediatek@lists.infradead.org>; Mon, 08 Jul 2019 04:04:51 -0700 (PDT)
X-Received: by 2002:a0c:9608:: with SMTP id 8mr13983354qvx.98.1562583891554;
 Mon, 08 Jul 2019 04:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190619084110.136713-1-tientzu@chromium.org>
In-Reply-To: <20190619084110.136713-1-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 8 Jul 2019 19:04:40 +0800
X-Gmail-Original-Message-ID: <CALiNf29kZ+PYx_jZQKRTcvJqOa6qOYpbXNQ9bryYMw6E0_pNfw@mail.gmail.com>
Message-ID: <CALiNf29kZ+PYx_jZQKRTcvJqOa6qOYpbXNQ9bryYMw6E0_pNfw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_040455_175985_75C68318 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, changqi.hu@mediatek.com,
 Greg KH <gregkh@linuxfoundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

gentle ping, thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
