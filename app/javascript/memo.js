// window.addEventListener('load', () => {
  
//   const submit = document.getElementById("submit");
//   submit.addEventListener("click", (e) => {
//     e.preventDefault();
//     const form = document.getElementById("form");
//     const formData = new FormData(form);
//     const XHR = new XMLHttpRequest();
//     XHR.open("POST", "/topics", true);
//     XHR.responseType = "json";
//     XHR.send(formData);
//     XHR.onload = () => {
//       const list = document.getElementById("list");
//       const item = XHR.response.post;
//       const html = `
//       <ul class="topic-titles", id="list">
//         <li class="topic-title"> ${item.title_name}
//         </li>
//       </ul>`;
//       list.insertAdjacentHTML("afterend", html);
//     };
//   });
// });