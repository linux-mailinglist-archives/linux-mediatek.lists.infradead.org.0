Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB1F65222
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 08:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3Qm4z4KxjVvXprrodQ9pgATBXKpYRRf2Yzmnbbdl8k=; b=pGDk2kO5sJ+zeT
	4HKTMJ4QA5PmMT3n7Rsq/yjMVvHjJec/SykaYeuKJ+jSEg+fHK6vjm1Q0Wsiycn4NaGAX3YR8JvYs
	K2cTH41nmZ+rDnson22mrEYsVvOHvm9KZi6llkVkSt5z+BHuA6i+dYUC5L+levLR7AwEWrfjg8SJh
	J1ELjTuYVSpEyYlKu+KeY01bAwDLCbODSbIGYbuUkBCYHiDZzYFaTNhmEqwfjeIZBEzfRqUSlWa60
	lAkVU+9yJpNNcujU/yQN7WTfU0cYqShv856x5s0NKct+Yizs3GB/gI73vIEqf5BcYKpZQ0SmtH5Co
	ahjERefAzHVHdLUZX7eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlT38-0005N0-1F; Thu, 11 Jul 2019 06:59:26 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlT35-0005Lo-6b
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 06:59:24 +0000
Received: by mail-yb1-xb43.google.com with SMTP id t10so1807804ybk.3
 for <linux-mediatek@lists.infradead.org>; Wed, 10 Jul 2019 23:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxuAB1TFfOLY6AJLUqkLsHqei48+H0EoPDX63JEWVUQ=;
 b=JT/PHLLmP76KFR+CWSA7mqkJpiE1Z9ooDcArRN8YhtTpGnaVIGTt7h4MX8EiMNQnBu
 0dvhfc1FFyzkOh93KRWukYZVlUhn252p4ld3ODk8IFX1M5930tF4KII4MdeYP0EqtGIN
 wPVqstBZsXbRy8ktluUeEFlBC0Yaa5Dpwhblg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxuAB1TFfOLY6AJLUqkLsHqei48+H0EoPDX63JEWVUQ=;
 b=ACB3GaolURvIJbUHi6QyH7AAx48k4HTk9LUkLOYx8V1z8ku3ovI3peuxf1z840N7T7
 uYZczgGxOmzejJNjT+YV4btx13cYbU11Ou92CTlowaiJZ5Yup1aNRKz7Uda2KJUNoZvZ
 iZVM+RLWgnCGD4d+jqyQDY7AyBRcEcjmfW/QkGrPeg5yptK2rCqQCG5N+0C43PStSTIM
 ovCA8Z+3j9Y2GV3RQAwUwYGdG+tTQ+1N38vPz72s1B+RJZ9TILWoWzpnQedU7ji4F6RG
 cYA4Evfg32iiL3q2uDrtBoG4LkP/5qXwnbVNaW2nqvVeY9KsUiomUlvLZaR7mZxpciZB
 OIAw==
X-Gm-Message-State: APjAAAXimnTGnNLAvhGsPLF8i//U6r6UnaZenOCvpDElwssXgu8eKd+a
 w8ADJey4urJPT/DiCo9wHowVkOQKddj9+R90x6bpWg==
X-Google-Smtp-Source: APXvYqwado58eCJeHMQ9dPsGnjL/57pgLM5+tKCxJAmbGS7r5cTVuFQRF2SlUlEYqsmNNQur51KljajuBcdinJrEf2Q=
X-Received: by 2002:a0c:fa8b:: with SMTP id o11mr1430829qvn.6.1562828361503;
 Wed, 10 Jul 2019 23:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
 <1558670066-22484-4-git-send-email-xixi.chen@mediatek.com>
 <CAJMQK-gTh-Zm8ct-DMsjee7H8GJKWxJ2BWW=YKXeinmAiW98gQ@mail.gmail.com>
 <1562827383.22938.7.camel@mhfsdcap03>
In-Reply-To: <1562827383.22938.7.camel@mhfsdcap03>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 11 Jul 2019 14:58:55 +0800
Message-ID: <CAJMQK-ih5UM0KJwK_6uziyQ1D7nU+1rcnOecp9uHEy_d+6fK7g@mail.gmail.com>
Subject: Re: [PATCH v2, 3/3] mt8183: emi: add bandwidth driver support
To: Xi Chen <xixi.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_235923_267173_284A9A53 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, srv_heupstream@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 2:43 PM Xi Chen <xixi.chen@mediatek.com> wrote:

>   I understand your idea, but emi driver stores the last 67ms bandwidth,
> and just the last 67ms, not all the time. So, we will move the array
> elements every 1ms.

We can still don't need to move the array elements every 1 ms for
keeping last 67ms.
The idea is like

original:
st                   ed
 |                      |
0, 1, 2, 3, .... 66

insert 67, move st and ed by 1, and 67 inserted to ed position:
ed  st
 |     |
67, 1, 2, 3,... 66

insert 68, move st and ed by 1, and 68 inserted to ed position:
      ed  st
        |   |
67, 68, 2, 3,... 66

But might be more complicated to implement this than current code, and
array size is small, so just an idea for your reference.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
